/***************************************************************************************
* Energy Limiter - USB power switch - V1.0
*  - timer based - button presses determine timeout period
*  - USB charging will stop once timer expires (simple GPIO power switch control)
***************************************************************************************/

#include <msp430.h>
#include <stdint.h>

#define GPIO_SEL(port) P ## port ## SEL0
#define GPIO_DIR(port) P ## port ## DIR
#define GPIO_OUT(port) P ## port ## OUT
#define GPIO_IN(port) P ## port ## IN
#define GPIO_REN(port) P ## port ## REN

#define GPIO_CONFIG_AS_INPUT(port,pin) { GPIO_SEL(port) &= ~(pin); GPIO_DIR(port) &= ~(pin); }
#define GPIO_CONFIG_AS_OUTPUT(port,pin) { GPIO_SEL(port) &= ~(pin); GPIO_DIR(port) |= (pin); }
#define GPIO_CONFIG_AS_PERIPHERAL_IN(port,pin) { GPIO_SEL(port) |= (pin); GPIO_DIR(port) &= ~(pin); }
#define GPIO_CONFIG_AS_PERIPHERAL_OUT(port,pin) { GPIO_SEL(port) |= (pin); GPIO_DIR(port) |= (pin); }

#define GPIO_SET(port,pin) { GPIO_OUT(port) |= (pin); }
#define GPIO_CLEAR(port,pin) { GPIO_OUT(port) &= ~(pin); }
#define GPIO_READ(port,pin)  ( GPIO_IN(port) & (pin) )
#define GPIO_PULL(port,pin)  { GPIO_REN(port) |= (pin);}


#define LED_PIN BIT0
#define LED_PORT 1

#define ADIN_CURRENT_PIN BIT1
#define ADIN_CURRENT_PORT 1

#define USB_EN_PIN BIT0
#define USB_EN_PORT 2

// P2.1 PIN
#define SW2_PIN BIT1
#define SW2_PORT 2

// P1.2 PIN
#define SW1_PIN BIT2
#define SW1_PORT 1

uint16_t adcResult = 0;

/* can hold about 65k seconds (18 hours)*/
uint16_t sysTick = 0;

uint16_t timerTicks = 0;
uint16_t ledTicks = 0;

uint16_t powerOnTime = 0;
uint16_t powerOnStart = 0;

uint8_t buttonPressed = 0;

/* measured internal loop time for about 1ms delay*/
#define TICKS_PER_1MS 116

/* default CLK - timer value to load for 50ms time tick */
#define TIMER_CNT_FOR_50MS 52595

/* 3600 = 1 hour */
/* time in seconds */
#define BUTTON_TIME 1800

// Function prototypes
void delayMS(uint16_t delay);

void main(void) {
    WDTCTL = WDTPW | WDTHOLD;               // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;                   // Disable the GPIO power-on default high-impedance mode
                                            // to activate previously configured port settings
    P1DIR |= 0x01;                          // Set P1.0 to output direction

    /* configure analog input */
    P1SEL0 |= ADIN_CURRENT_PIN;
    P1SEL1 |= ADIN_CURRENT_PIN;

    GPIO_CLEAR(USB_EN_PORT, USB_EN_PIN);

    GPIO_SET(SW2_PORT, SW2_PIN);
    GPIO_PULL(SW2_PORT, SW2_PIN);
    GPIO_SET(SW1_PORT, SW1_PIN);
    GPIO_PULL(SW1_PORT, SW1_PIN);

    GPIO_PULL(USB_EN_PORT, USB_EN_PIN);

    GPIO_CONFIG_AS_INPUT(USB_EN_PORT, USB_EN_PIN);
    ADCCTL0 |= ADCMSC_1 | ADCON;
    ADCCTL1 |= ADCSHP_1 | ADCSSEL_1 | ADCCONSEQ_2;
    ADCMCTL0 |= ADCINCH_1;
    ADCCTL0 |= ADCSC | ADCENC;

    TB0CCTL0 |= CCIE;                             // TBCCR0 interrupt enabled
    TB0CCR0 = 50000;
    TB0CTL |= TBSSEL__SMCLK | MC__CONTINUOUS;     // SMCLK, continuous mode
    __bis_SR_register(GIE);

    for(;;) {
        //P1OUT ^= 0x01;                      // Toggle P1.0 using exclusive-OR
        delayMS(25);
        if(!GPIO_READ(SW1_PORT, SW1_PIN) && buttonPressed == 0){
            /* SW1 Button was pressed */
            buttonPressed = 1;
            GPIO_SET(USB_EN_PORT, USB_EN_PIN);
            if (powerOnTime >=BUTTON_TIME)
            {
                powerOnTime -= BUTTON_TIME;
            }
            else
            {
                powerOnTime = 0;
                GPIO_CLEAR(USB_EN_PORT, USB_EN_PIN);
            }
            delayMS(10);
        }
        if(!GPIO_READ(SW2_PORT, SW2_PIN) && buttonPressed == 0){
            buttonPressed = 1;
            /* SW2 Button was pressed */
            powerOnTime += BUTTON_TIME;
            /* if switch is off, start the time basis and set the switch on */
            if (!GPIO_READ(USB_EN_PORT, USB_EN_PIN))
            {
                powerOnStart = sysTick;
                GPIO_SET(USB_EN_PORT, USB_EN_PIN);
            }
            delayMS(10);
        }
        delayMS(25);
        adcResult = ADCMEM0;
        if (buttonPressed){
            // check to make sure both buttons are no longer pressed before clearing the button press event
            if(GPIO_READ(SW2_PORT, SW2_PIN) && GPIO_READ(SW1_PORT, SW1_PIN))
            {
                buttonPressed = 0;
            }
        }
        if ((sysTick-powerOnStart) >= powerOnTime)
        {
            GPIO_CLEAR(USB_EN_PORT, USB_EN_PIN);
            powerOnTime = 0;
        }
        if (sysTick >= 50000)
        {
            sysTick -= 25000;
            /* check to see if switch is high or low and modify powerOnStart as well */
            if (GPIO_READ(USB_EN_PORT, USB_EN_PIN))
            {
                powerOnStart -= 25000;
            }
        }
        //GPIO_CLEAR(USB_EN_PORT, USB_EN_PIN);
    }
}

void delayMS(uint16_t delay)
{
    volatile unsigned int i;            // volatile to prevent optimization
    do {
        i = TICKS_PER_1MS;
        do i--;
        while(i != 0);
        delay--;
    }
    while (delay > 0);

}

// Timer B0 interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = TIMER0_B0_VECTOR
__interrupt void Timer_B (void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(TIMER0_B0_VECTOR))) Timer_B (void)
#else
#error Compiler not supported!
#endif
{
    TB0CCR0 += TIMER_CNT_FOR_50MS;
    timerTicks ++;
    if (timerTicks == 20){
        timerTicks = 0;
        sysTick++;
        ledTicks++;
        if (GPIO_READ(USB_EN_PORT, USB_EN_PIN))
        {
            P1OUT ^= 0x01;
            ledTicks = 0;
        }
        else
        {
            ledTicks++;
        }
        if (ledTicks >= 4)
        {
            P1OUT ^= 0x01;
            ledTicks = 0;
        }
    }
}


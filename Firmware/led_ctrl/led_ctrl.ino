/* LED Strip Controller
 * By: Rahul Eswar
 * Date: October 19, 2019

 * This program is made for on the fly manual control of the WS2812B LED lightstrip.
 * The user can control and configure the LED settings with 3 potentiometer knobs and 1 button
 * The button works to change modes between: HSV colour set, patterned light show and music visualization
 * Knobs control different settings depending on the mode set (e.g. colour in colour set mode, frequency focus in music mode etc.)
 */

// FastLED library definitions
#include <FastLED.h>
#define LED_PIN     4
#define NUM_LEDS    111
#define BRIGHTNESS  64
#define CONTROLS    3
#define LED_TYPE    WS2811
#define COLOR_ORDER GRB
CRGB leds[NUM_LEDS];

// update rate
#define UPDATES_PER_SECOND 100

// number of modes to cycle
#define NUM_MODES 3

// change mode button pin to attach interrupt
#define BTN_PIN 2

// maximum analog reading from sound sensor (sensor read out is after 10k/100k voltage divider and therefore 1023/11=93) - Experimentally observed highs of 97
#define SENSOR_MAX 97

// user input control pins
uint8_t potReadPin[] = {0, 1, 2};

// pin to read from sound sensor
const uint8_t sensorPin = A3;

// variable to store 10 bit value from sound sensor
uint16_t sensorValue;

// declare initial mode
uint8_t mode = 0;

// pins used for LED mode indication
const uint8_t modeLEDs[NUM_MODES] = {6, 7, 8};

// for the interrupt function
volatile byte state = NUM_MODES;

CRGBPalette16 currentPalette;
TBlendType    currentBlending;


// structure for storing the 3 mapped user inputs
typedef struct {
  uint16_t inputA;
  uint16_t inputB;
  uint16_t inputC;
} LEDSettings;

// global variable to store user inputs
LEDSettings userInput;

// Defining custom palette of Raptors colours!
const TProgmemPalette16 TorontoRaptors_p PROGMEM =
{
    CRGB::DarkRed,
    CRGB::DarkRed,
    CRGB::DarkRed,
    CRGB::DarkRed,
    CRGB::DarkRed,
    
    CRGB::DarkViolet,
    CRGB::DarkViolet,
    CRGB::DarkViolet,

    CRGB::Snow,
    CRGB::Snow,
    CRGB::Snow,
    CRGB::Snow,
    
    CRGB::Purple, 
    CRGB::Purple,
    CRGB::Purple,
    CRGB::Purple   
};


// Defining custom palette of Lakers colours!
const TProgmemPalette16 Lakers_p PROGMEM =
{
    CRGB::Yellow,
    CRGB::Yellow,
    CRGB::Yellow,
    CRGB::Yellow,
    
    CRGB::Purple,
    CRGB::Purple,
    CRGB::Purple,
    CRGB::Purple,
    
    CRGB::White,
    CRGB::White,
    
    CRGB::Yellow,
    CRGB::Yellow,
    CRGB::Yellow,
    CRGB::Purple,
    CRGB::Purple,
    CRGB::Purple
};


// Defining custom palette of the India flag
const TProgmemPalette16 India_p PROGMEM =
{
    CRGB::Orange,
    CRGB::Orange,
    CRGB::Gray,
    CRGB::Green,
    CRGB::Green,
    
    CRGB::Blue,
    CRGB::Blue,
    CRGB::Gray,
    
    CRGB::Green,
    CRGB::Green,
    CRGB::Gray,
    CRGB::Gray,
    CRGB::Orange,
    CRGB::Orange,
    
    CRGB::Gray,
    CRGB::Gray
};


void setup() {
  // power-up safety delay
  delay(1500);
  
  // data rate
  Serial.begin(9600);

  // FastLED library set-up
  FastLED.addLeds<WS2812, LED_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.setBrightness(64);

  // pin declarations for interrupt
  pinMode (BTN_PIN, INPUT_PULLUP);

  // set pins for LED mode indicators as output
  for (int i= 0; i < NUM_MODES; i++)
  {
    pinMode (modeLEDs[modeLEDs[0] + i], OUTPUT);
  }

  // attaching interrupt used for mode switch on button press
  attachInterrupt(digitalPinToInterrupt(BTN_PIN), changeMode, FALLING);

  // initialization of colour palette color breathe mode
  currentPalette = RainbowColors_p;
  currentBlending = LINEARBLEND;  
}


void loop() {
  // calculate the active state
  mode = state % NUM_MODES;

  // change LED to show user what mode we are in
  modeIndicateLED(mode);

  // execute the operation for active mode
  executeMode(mode);

  FastLED.show();
  FastLED.delay(1000 / UPDATES_PER_SECOND);
}


// turns active mode LED on and the rest are off (indicates to user the mode we are in)
void modeIndicateLED (uint8_t mode) {
   for (int i = 0; i < NUM_MODES; i++) 
   {
      if (i == mode)
      {
        digitalWrite(modeLEDs[i], HIGH);
      }
      else
      {
        digitalWrite(modeLEDs[i], LOW);
      }
   }
}


// calls the required function based on active mode
void executeMode(uint8_t mode) {

  // for start index in color pallete mode
  static uint16_t startIndex = 1;

  switch (mode) 
  {
    case 0:
      staticColourSet();
      break;
    case 1:
      startIndex++; // motion speed
      lightShow(startIndex);
      break;
    case 2:
      musicVisualizer();
      break;
    default:
      staticColourSet();
  }
}


// interrupt function to run on button press
void changeMode() {
  // reason for this condition is to correct hardware issue of button double triggering...
  static unsigned long lastInterrupt;
  
  if (millis() - lastInterrupt > 250)
  {
    state++;  
    lastInterrupt = millis();
  }
}


// returns mapped inputs from input knobs in form of structure 'userSettings'
void mapInputs (LEDSettings *newSettings, uint16_t range1, uint16_t range2, uint16_t range3) {

  // read and map the values
  newSettings->inputA = map(analogRead(potReadPin[0]), 0, 1023, 0, range1);
  newSettings->inputB = map(analogRead(potReadPin[1]), 0, 1023, 0, range2);
  newSettings->inputC = map(analogRead(potReadPin[2]), 0, 1023, 0, range3);
}


// MODE:0 - takes user input and maps to HSV colours
void staticColourSet() {
  // create variable of structure 'userSettings' and fill with mapped values
  mapInputs(&userInput, 255, 255, 255);

  

  for (int i = 0; i < NUM_LEDS; i++)
  {
      leds[i] = CHSV(userInput.inputA, userInput.inputB, userInput.inputC);
  }
}


// MODE:1 - goes through patterns of changing LEDs from the loaded palette
void lightShow(uint16_t startIndex) {

  mapInputs(&userInput, 6, 255, 255);

  // first knob is adjusted to choose the colour palette
  // second knob is manipulate motion speed
  // third knob assigns brightness

  switch (userInput.inputA)
  {
    case 0:
      currentPalette = RainbowColors_p;
      break;
    case 1:
      currentPalette = OceanColors_p;
      break;
    case 2:
      currentPalette = ForestColors_p;
      break;
    case 3:
      currentPalette = TorontoRaptors_p;
      break;
    case 4:
      currentPalette = Lakers_p;
     break;
    case 5 ... 6:
      currentPalette = India_p;
     break;
    default:
      currentPalette = RainbowColors_p;
  }
  
  // write to LEDS as required
  for (int i = 0; i < NUM_LEDS; i++) 
  {
      leds[i] = ColorFromPalette(currentPalette, startIndex, userInput.inputC, currentBlending);
      startIndex += userInput.inputB;
  }
}


// MODE:2 - real time music visualizer (can configure origin LED, sensitivity and rate of colour change)
void musicVisualizer() {

  // Potentiometer 1 is origin LED number, 2 is the sensor threshold value to show colour, 3 is minimum value for brightness range
  mapInputs(&userInput, NUM_LEDS - 1, SENSOR_MAX, 254);  // second map value due to a 1:10 pull down resistor on sensor pin

  // initialize the colour which will be swept through
  static uint8_t colour = 1;

  colour++;
 
  sensorValue = analogRead(sensorPin);

  Serial.println(sensorValue);

  // colour the first pixel according to the live sound
  colourOriginPixel(sensorValue, colour, userInput.inputA, userInput.inputB, userInput.inputC);  

  // propagate the colour wave in 2 directions from origin
  pointSourceWave(userInput.inputA);  
}


// colour pixels at the chosen source on LED strip for music visualizer
void colourOriginPixel (uint16_t sensorValue, uint8_t colour, uint16_t origin, uint16_t threshold, uint8_t minBrightness) {
  if (sensorValue > threshold)
  {
    leds[origin] = CHSV(colour, 255, map(sensorValue, 0, SENSOR_MAX, minBrightness, 255));
  }
  else 
  {
    leds[origin].setRGB(0, 0, 0);
  }
}


// function takes an origin point LED and propagates the wave in both directions away from source for music visualizer
void pointSourceWave (uint16_t origin) {
  for (int i = 0; i < origin; i++) 
  {
    leds[i] = leds[i + 1];    
  }
  
  for (int i = NUM_LEDS - 1; i > origin; i--) 
  {
    leds[i] = leds[i - 1];
  }
}

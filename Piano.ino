#include <Keyboard.h>

void setup() {
  // begin Keyboard 
  Keyboard.begin();
}

void loop() {
}

void playNote(int keys[], long duration, long delayBetween) {
  for (int i = 0; i < sizeof(keys); i++) {
    Keyboard.press(keys[i]);
  }

  delay(duration);

  Keyboard.releaseAll();

  delay(delayBetween);
}


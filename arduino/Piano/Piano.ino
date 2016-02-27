#include <Keyboard.h>

void setup() {
  // begin Keyboard 
  Keyboard.begin();
}

void loop() {
}

void playNote(String keysStr, long duration, long delayBetween) {
  char keys[sizeof(keysStr)];
  keysStr.toCharArray(keys, sizeof(keys));
  
  for (int i = 0; i < sizeof(keys); i++) {
    Keyboard.press(keys[i]);
  }

  delay(duration);

  Keyboard.releaseAll();

  delay(delayBetween);
}

void delaySeconds(int secs) {
  long seconds = (long)secs * 1000;
  delay(seconds);
}


#include <Keyboard.h>

void setup() {
  // begin Keyboard 
  Keyboard.begin();
}

void loop() {
}

void playNote(String keys, long duration, long delayBetween) {
  for (int i = 0; i < keys.length(); i++) {
    Keyboard.press(keys.charAt(i));
  }

  delay(duration);

  Keyboard.releaseAll();

  delay(delayBetween);
}

void delaySeconds(int secs) {
  long seconds = (long)secs * 1000;
  delay(seconds);
}


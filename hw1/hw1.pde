// Author: Carol Joplin
// Asgnmt: Homework 1
// Source: https://processing.org/reference/libraries/sound/SoundFile.html
         //https://processing.org/reference/loadImage_.html

import processing.sound.*;
SoundFile file;
PImage img;

void setup(){
  size(637, 358);
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "jocofullinterview41.mp3");
  file.play();
}

void draw(){
  //img = loadImage("hello-world.jpg");
  img = loadImage("helloWorld.jpeg");
  image(img, 0, 0);
}
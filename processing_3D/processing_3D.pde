//BRAHIMI Ismail
import peasy.*;
Planet sun;

PeasyCam cam;

PImage sunTexture;
PImage galaxyTexture;
PImage[] textures = new PImage[3];

void setup() {
  size(1024, 768, P3D);
  sunTexture = loadImage("sun.jpg");
  galaxyTexture = loadImage("galaxy.jpg");
  textures[0] = loadImage("mars.jpg");
  textures[1] = loadImage("earth.jpg");
  textures[2] = loadImage("venus.jpg");
  cam = new PeasyCam(this, 500);
  sun = new Planet(50, 0, 0, sunTexture);
  sun.spawnMoons(4, 1);
}

void draw() {
  lights();
  background(galaxyTexture);
  ambientLight(255,255,255);
  pointLight(255, 255, 255, 0, 0, 0);
  sun.show();
  sun.orbit();
}

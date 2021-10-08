final int N = 128;
final int ITER = 10;
final int SCALE = 5;

Fluid fluid;

void settings() {
  size(N * SCALE, N * SCALE);
}

void setup() {
  fluid = new Fluid(0.1, 0, 0);
}

void mouseDragged() {
  fluid.addDensity(mouseX / SCALE, mouseY / SCALE, 400);
  
  float amtX = mouseX - pmouseX;
  float amtY = mouseY - pmouseY;
  
  fluid.addVelocity(mouseX / SCALE, mouseY / SCALE, amtX, amtY);
}

void draw() {
  background(0);
  fluid.step();
  fluid.render();
  fluid.fade();
}

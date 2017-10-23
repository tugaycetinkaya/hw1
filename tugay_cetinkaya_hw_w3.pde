void setup() {
  size(800, 800);
  background(0);
  smooth();
}

void draw() {
  noStroke();
  for (int y = 50; y <= height; y += 80) {
    for (int x = 50; x <= width; x += 80) {
      fill(x-10, 70-x+y, y);
      ellipse(x, y, y/20, y/20);
      rect(x, y, 45, 45);

    }
  }
}
void setup() {
  size(800, 800);
  background(0);
  smooth();
}

void draw() {
  noStroke();
  for (int y = 50; y <= height; y += 80) {
    for (int x = 50; x <= width; x += 80) {
      fill(x+10, 70-y, y);
     rect(x, y, y/20, y/20);
     rect(x+1, y+1, y/20, y/20,10);
     rect(x+2, y+2, y/20, y/20,20);
     rect(x+3, y+3, y/20, y/20,30);
     rect(x+4, y+4, y/20, y/20,40);

      

    }
  }
}
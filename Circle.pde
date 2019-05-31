class Circle {
  final int[] x = {0, 0, 600, 0, -600, 0, 1200, 0, -1200};
  final int[] y = {0, -600, 0, 600, 0, -1200, 0, 1200, 0};
  int ellipseSize;
  int strokeWeight;
  int strokeColor;
  
  Circle() {
    this.ellipseSize = 0;
    this.strokeWeight = 10;
    this.strokeColor = 255;
  }

  void draw() {
    noFill();
    stroke(255, strokeColor);
    strokeWeight(strokeWeight);
    for (int i = 0; i < x.length; i++) {
      ellipse(x[i], y[i], ellipseSize, ellipseSize);
    }
    ellipseSize += 15;
    strokeWeight = (int)(10 - ellipseSize/200);
    strokeColor--;
  }
}

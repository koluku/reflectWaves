class CircleList {
  ArrayList<Circle> circlesList;
  
  CircleList() {
    this.circlesList = new ArrayList<Circle>();
  }
  
  void add(Circle c) {
    this.circlesList.add(c);
  }
  
  void remove() {
    // ArrayListでは削除後にindexが変化してしまうので，イテレータを利用
    Iterator<Circle> it = circlesList.iterator();
    while (it.hasNext()) {
      if (it.next().strokeWeight == 0) it.remove();
    }
  }
  
  void draw() {
    for (int i = 0; i < circlesList.size(); i++) {
      circlesList.get(i).draw();  // 円を描画する
    }
    this.remove();  // 削除すべき円がある場合は消す
  }
}

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

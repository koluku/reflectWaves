// Author: ohayota
// クリックすると波を生成する

import java.util.Iterator;

CircleList cl = new CircleList();

void setup() {
  size(600, 600);
  ellipseMode(CENTER);  // ellipseの第2引数までは中心座標 
}

void draw() {
  background(0);
  translate(width/2, height/2);  // (x, y)=(0, 0)を画面の中心に設定
  
  cl.draw();
}

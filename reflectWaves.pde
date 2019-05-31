// Author: ohayota
// クリックすると波を生成する

import java.util.Iterator;

ArrayList<Circle> circlesList;

void setup() {
  size(600, 600);
  ellipseMode(CENTER);  // ellipseの第2引数までは中心座標
  
  circlesList = new ArrayList<Circle>();
}

void draw() {
  background(0);
  translate(width/2, height/2);  // (x, y)=(0, 0)を画面の中心に設定
  
  for (int i = 0; i < circlesList.size(); i++) {
    circlesList.get(i).draw();  // 円を描画する
  }
  
  removeCircle();  // 削除すべき円がある場合は消す
}

void removeCircle() {
  // ArrayListでは削除後にindexが変化してしまうので，イテレータを利用
  Iterator<Circle> it = circlesList.iterator();
  while (it.hasNext()) {
    if (it.next().strokeWeight == 0) it.remove();
  }
}

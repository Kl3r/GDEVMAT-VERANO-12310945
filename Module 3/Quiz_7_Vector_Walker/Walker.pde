class Walker {
  PVector position;
  PVector speed;

  Walker(PVector startPosition, PVector startSpeed) {
    position = startPosition;
    speed = startSpeed;
  }


  void moveAndBounce() {
    position.add(speed);

    if ((position.x > Window.right) || (position.x < Window.left)) {
      speed.x *= -1;
      color rgb = color(random(256), random(256), random(256)); //rgb
      fill(rgb);
    }

    if ((position.y > Window.top) || (position.y < Window.bottom)) {
      speed.y *= -1;
      color rgb = color(random(256), random(256), random(256)); //rgb
      fill(rgb);
    }
  }


  void ball() {
    circle(position.x, position.y, 100);
  }
}

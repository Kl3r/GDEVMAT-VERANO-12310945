class Walker {
    float x;
    float y;

    void render() {
        circle(x, y, 30);
    }

    void randomWalk() {
        int rng = int(random(8));
        if (rng == 0) {
          color lime = color (186, 247, 0);
           fill(lime);
            x += 10; // right
        } else if (rng == 1) {
           color red = color (255, 42, 79);
           fill(red);
            x -= 10; // left
        } else if (rng == 2) {
          color lightBlue = color (87, 217, 243);
          fill(lightBlue);
            y += 10; // down
        } else if (rng == 3) {
          color lightViolet = color (240, 155, 243);
          fill(lightViolet);
            y -= 10; // up
            //circle
        } else if (rng == 4) {
           color brown = color (59, 7, 12);
          fill(brown);
            x += 10; // right
            y -= 10; // up right
        } else if (rng == 5) {
          color pink = color (232, 5, 140);
          fill(pink);
            x -= 10; // left
            y -= 10; // up left
        } else if (rng == 6) {
          color green = color (0, 255, 0);
          fill(green);
            x += 10; // right
            y += 10; // down right
        } else if (rng == 7) {
          color lightBrown = color (180, 100, 0);
          fill(lightBrown);
            x -= 10; // left
            y += 10; // down left
        }
    }
}

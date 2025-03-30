class Biased {
    float x;
    float y;

    void render() {
        circle(x, y, 30);
    }

    void randomWalkBiased() {
        float rng = random(1);
        if (rng < 0.4) {
            x += 10; // right 40%
        } else if (rng < 0.6) {
            x -= 10; // left 20%
        } else if (rng < 0.8) {
            y -= 10; // up 20%
        } else {
            y += 10; // down 20%
        }
    }
}

let distance = 3.0;
let speed = 1.0;

fn on_start() {
    this.home = this.pos;
    this.dir = 1.0;
}

fn on_update(dt) {
    let next = this.pos + vec3(this.speed * this.dir * dt, 0, 0);
//	print(next);
    if (next - this.home).length() > this.distance {
        this.dir = -this.dir;
    } else {
        this.pos = next;
    }
}
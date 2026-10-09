// scripts/gameplay/chaser.rhai
import "core/moves" as moves;

let speed = 2.0;

fn on_update(dt) {
    let hero = find_entity("gravel");
    if hero != () {
        this.pos = moves::toward(this.pos, hero.pos, this.speed * dt);
    }
}

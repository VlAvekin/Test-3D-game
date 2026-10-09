// scripts/core/moves.rhai
export const GRAVITY = 9.8;

fn toward(from, to, step) {
    let d = to - from;
    if d.length() <= step { to } else { from + d.normalize() * step }

}

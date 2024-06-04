include <BOSL2/std.scad>

$fn=64;

module pinopel() {
    cylinder(h=5, d=4)
    attach(TOP,BOT)
    cylinder(h=2, d=8);
}

module rolle() {
    tex = texture("diamonds");
    attachable() {
        yrot(90)
        cyl(h=120, d=25, rounding=5, texture=tex, style="default")
        attach([BOT,TOP])
        pinopel();
        children();
    }
}

rolle();
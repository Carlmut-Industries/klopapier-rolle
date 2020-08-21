$fn=128;

module klopapier_halterung() {
    rotate(a=[90, 0, 0]) {
        cylinder(d=25, h=123, center=true);
        cylinder(d=4, h=133, center=true);
        
        
    }

    // penöpel
    translate([0, -67.5, 0]) rotate(a=[90, 0, 0]) cylinder(d=8, h=2, center=true);
    translate([0, 67.5, 0]) rotate(a=[90, 0, 0]) cylinder(d=8, h=2, center=true);
}

difference() {
    klopapier_halterung();
    translate([8, 0, -4]) {
        rotate(a=[90, 0, 90])
        linear_extrude(5)
        text(text="Carlmut Industries™", halign="center", size=8, font="Liberation Sans:style=Bold Italic");
    }
}
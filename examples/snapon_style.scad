// ========================================
// SNAP-ON Style Sign Example
// ========================================
// Classic industrial tool brand aesthetic
// Bold, geometric, all-caps design

text_string = "SNAP-ON";
font_name = "Futura:style=Bold Italic";
font_size = 40;

base_width = 180;
base_depth = 60;
base_height = 2;
text_height = 5;

hole_diameter = 8;
hole_depth = 3.2;
hole_offset = 0.2;
hole_spacing = 15;

$fn = 64;

// Calculated values
num_holes = floor(base_width / hole_spacing) + 1;

// Main assembly
difference() {
    union() {
        // Simple rectangular base
        color("red")
        translate([0, 0, base_height / 2])
            cube([base_width, base_depth, base_height], center = true);
        
        color("white")
        translate([0, 0, base_height])
            linear_extrude(height = text_height)
                text(text_string, size = font_size, font = font_name, 
                     halign = "center", valign = "center");
    }
    
    // Mounting holes
    start_x = -(num_holes - 1) * hole_spacing / 2;
    for (i = [0 : num_holes - 1]) {
        translate([start_x + i * hole_spacing, 0, hole_offset])
            cylinder(h = hole_depth, d = hole_diameter);
    }
}

// ========================================
// Garage/Workshop Sign Example
// ========================================
// Larger text for wall mounting
// Fewer, larger mounting holes

text_string = "GARAGE";
font_name = "Helvetica:style=Bold";
font_size = 60;

buffer_size = 5;
text_height = 8;
base_height = 3;

hole_diameter = 10;
hole_depth = 5;
hole_offset = 0.5;
hole_spacing = 40; // Wider spacing for larger sign

$fn = 80; // Higher resolution for larger print

// Calculated values
text_width = font_size * len(text_string) * 0.6;
num_holes = floor(text_width / hole_spacing) + 1;

// Main assembly
difference() {
    union() {
        color("orange")
        linear_extrude(height = base_height)
            offset(r = buffer_size)
                text(text_string, size = font_size, font = font_name, 
                     halign = "center", valign = "center");
        
        color("black")
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

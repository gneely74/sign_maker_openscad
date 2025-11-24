// ========================================
// Garage/Workshop Sign Example
// ========================================
// Larger text for wall mounting
// Fewer, larger mounting holes

text_string = "GARAGE";
font_name = "Helvetica:style=Bold";
font_size = 60;

buffer_size = 10;
base_height = 3;
text_height = 8;

hole_diameter = 10;
hole_depth = 5;
hole_offset = 0.5;
hole_spacing = 40; // Wider spacing for larger sign

$fn = 80; // Higher resolution for larger print

// Calculated values
text_width = font_size * len(text_string) * 1.0;
text_total_height = font_size * 1.5;
base_width = text_width + 2 * buffer_size;
base_depth = text_total_height + 2 * buffer_size;
num_holes = floor(base_width / hole_spacing) + 1;

// Main assembly
difference() {
    union() {
        // Simple rectangular base
        color("orange")
        translate([0, 0, base_height / 2])
            cube([base_width, base_depth, base_height], center = true);
        
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

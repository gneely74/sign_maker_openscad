// ========================================
// Nameplate Example
// ========================================
// Small desktop nameplate
// Subtle, elegant design

text_string = "John Smith";
font_name = "Times New Roman:style=Bold";
font_size = 20;

base_width = 100;
base_depth = 30;
base_height = 1.5;
text_height = 3;

hole_diameter = 4;
hole_depth = 2;
hole_offset = 0.1;
hole_spacing = 10;

$fn = 48; // Lower resolution for smaller text

// Calculated values
num_holes = floor(base_width / hole_spacing) + 1;

// Main assembly
difference() {
    union() {
        // Simple rectangular base
        color("darkslategray")
        translate([0, 0, base_height / 2])
            cube([base_width, base_depth, base_height], center = true);
        
        color("gold")
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

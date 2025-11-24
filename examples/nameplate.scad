// ========================================
// Nameplate Example
// ========================================
// Small desktop nameplate
// Subtle, elegant design

text_string = "John Smith";
font_name = "Times New Roman:style=Bold";
font_size = 20;

buffer_size = 2;
text_height = 3;
base_height = 1.5;

hole_diameter = 4;
hole_depth = 2;
hole_offset = 0.1;
hole_spacing = 10;

$fn = 48; // Lower resolution for smaller text

// Calculated values
text_width = font_size * len(text_string) * 0.6;
num_holes = floor(text_width / hole_spacing) + 1;

// Main assembly
difference() {
    union() {
        // Solid rectangular base that fully contains text
        color("darkslategray")
        linear_extrude(height = base_height)
            minkowski() {
                text(text_string, size = font_size, font = font_name, 
                     halign = "center", valign = "center");
                square([buffer_size * 2, buffer_size * 2], center = true);
            }
        
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

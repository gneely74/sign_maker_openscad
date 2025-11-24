// ========================================
// No-Holes Decorative Sign Example
// ========================================
// Pure decorative piece without mounting holes
// Use adhesive backing or display stand

text_string = "WELCOME";
font_name = "Arial:style=Bold";
font_size = 50;

buffer_size = 10;
base_height = 2.5;
text_height = 6;

$fn = 64;

// Calculated values
text_width = font_size * len(text_string) * 0.8;
text_total_height = font_size * 1.5;
base_width = text_width + 2 * buffer_size;
base_depth = text_total_height + 2 * buffer_size;

// Main assembly - no holes!
union() {
    // Simple rectangular base
    color("navy")
    translate([0, 0, base_height / 2])
        cube([base_width, base_depth, base_height], center = true);
    
    color("white")
    translate([0, 0, base_height])
        linear_extrude(height = text_height)
            text(text_string, size = font_size, font = font_name, 
                 halign = "center", valign = "center");
}

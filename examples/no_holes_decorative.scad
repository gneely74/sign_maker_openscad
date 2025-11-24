// ========================================
// No-Holes Decorative Sign Example
// ========================================
// Pure decorative piece without mounting holes
// Use adhesive backing or display stand

text_string = "WELCOME";
font_name = "Arial:style=Bold";
font_size = 50;

buffer_size = 4;
text_height = 6;
base_height = 2.5;

$fn = 64;

// Calculated values for rectangle
text_width = font_size * len(text_string) * 0.6;

// Main assembly - no holes!
union() {
    // Solid rectangular base
    color("navy")
    translate([0, 0, 0])
        cube([text_width + 2 * buffer_size, 
              font_size * 1.2 + 2 * buffer_size, 
              base_height], 
             center = true);
    
    color("white")
    translate([0, 0, base_height])
        linear_extrude(height = text_height)
            text(text_string, size = font_size, font = font_name, 
                 halign = "center", valign = "center");
}

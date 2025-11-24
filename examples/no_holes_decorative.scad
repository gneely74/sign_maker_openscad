// ========================================
// No-Holes Decorative Sign Example
// ========================================
// Pure decorative piece without mounting holes
// Use adhesive backing or display stand

text_string = "WELCOME";
font_name = "Arial:style=Bold";
font_size = 50;

base_width = 200;
base_depth = 70;
base_height = 2.5;
text_height = 6;

$fn = 64;

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

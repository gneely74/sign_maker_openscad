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

// Main assembly - no holes!
union() {
    color("navy")
    linear_extrude(height = base_height)
        offset(r = buffer_size)
            text(text_string, size = font_size, font = font_name, 
                 halign = "center", valign = "center");
    
    color("white")
    translate([0, 0, base_height])
        linear_extrude(height = text_height)
            text(text_string, size = font_size, font = font_name, 
                 halign = "center", valign = "center");
}

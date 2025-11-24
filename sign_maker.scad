// ========================================
// Sign Maker - 3D Printable Sign Generator
// ========================================
// Creates signs with rectangular base plates and mounting holes

// ========================================
// Text Configuration
// ========================================
text_string = "SNAP-ON";
font_name = "SF Sports Night:style=Bold";
font_size = 40; // mm

// ========================================
// Dimensional Parameters
// ========================================
buffer_size = 3; // Margin around text on all sides (mm)
text_height = 5; // Height of text above base (mm)
base_height = 2; // Thickness of base plate (mm)

// ========================================
// Hole Configuration
// ========================================
hole_diameter = 8; // Diameter of mounting holes (mm)
hole_depth = 3.2; // Depth of holes from top surface (mm)
hole_offset = 0.2; // Height above XY plane where holes start (mm)
hole_spacing = 15; // Distance between hole centers (mm)

// ========================================
// Quality Settings
// ========================================
$fn = 64; // Circle resolution (higher = smoother, slower)

// ========================================
// Calculated Values
// ========================================
// Approximate text bounds for hole calculation
text_width = font_size * len(text_string) * 0.6;

// Calculate number of holes based on text width
num_holes = floor(text_width / hole_spacing) + 1;

// ========================================
// Main Assembly
// ========================================
difference() {
    union() {
        // Base plate - solid rectangle that fully contains text with buffer
        color("red")
        linear_extrude(height = base_height)
            // Create rectangle from text outline with buffer
            minkowski() {
                // Get the text outline
                text(text_string, 
                     size = font_size, 
                     font = font_name, 
                     halign = "center", 
                     valign = "center");
                // Add buffer around it and make it rectangular
                square([buffer_size * 2, buffer_size * 2], center = true);
            }
        
        // Extruded text on top of base
        color("white")
        translate([0, 0, base_height])
            linear_extrude(height = text_height)
                text(text_string, 
                     size = font_size, 
                     font = font_name, 
                     halign = "center", 
                     valign = "center");
    }
    
    // Subtract mounting holes
    create_holes();
}

// ========================================
// Modules
// ========================================

// Create evenly spaced mounting holes
module create_holes() {
    // Calculate starting position for holes
    start_x = -(num_holes - 1) * hole_spacing / 2;
    
    for (i = [0 : num_holes - 1]) {
        translate([start_x + i * hole_spacing, 0, hole_offset])
            cylinder(h = hole_depth, d = hole_diameter);
    }
}

// ========================================
// Helper Modules (for testing/visualization)
// ========================================

// Uncomment to visualize text bounds (for debugging)
// module show_text_bounds() {
//     color("blue", 0.2)
//     translate([0, 0, -0.1])
//         cube([text_width, text_total_height, 0.1], center = true);
// }
// show_text_bounds();

// Uncomment to show hole positions (for debugging)
// module show_hole_markers() {
//     start_x = -(num_holes - 1) * hole_spacing / 2;
//     for (i = [0 : num_holes - 1]) {
//         color("green")
//         translate([start_x + i * hole_spacing, 0, 0])
//             cylinder(h = 0.5, d = 1);
//     }
// }
// show_hole_markers();

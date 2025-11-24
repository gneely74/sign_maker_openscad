# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Repository Overview

This repository contains OpenSCAD programs for creating 3D printable signs and text objects with customizable features. The primary focus is on creating text with flowing base plates and mounting holes.

## Key Features

The sign maker tool creates:
- **3D Text Objects**: Extruded text with configurable fonts and sizes
- **Solid Rectangular Base**: Clean rectangular base plate that extends beyond text by buffer_size
- **Mounting Holes**: Evenly spaced holes for mounting or design purposes
- **Multi-layer Design**: Separate text and base layers for visual depth

## Main Parameters

### Text Configuration
- `text_string`: The text to render (e.g., "SNAP-ON")
- `font_name`: Font family and style (e.g., "Futura:style=Bold Italic")
- `font_size`: Size of the text in mm (default: 40)

### Dimensional Parameters
- `buffer_size`: Buffer around text on all sides (default: 10mm)
- `base_height`: Thickness of the base plate (default: 2mm)
- `text_height`: Height of the text above the base (default: 5mm)

### Hole Configuration
- `hole_diameter`: Diameter of mounting holes (default: 8mm)
- `hole_depth`: Depth of holes from top surface (default: 3.2mm)
- `hole_offset`: Height above XY plane where holes start (default: 0.2mm)
- `hole_spacing`: Distance between hole centers along the text (default: 15mm)

## Design Principles

### Base Generation
The base is created as a solid rectangle using `cube()`:
- Base dimensions automatically calculated from text size + buffer
- Width = text_width + 2 * buffer_size
- Depth = text_height + 2 * buffer_size
- Text is centered on the base
- Provides a stable, uniform platform for the text
- Simple, clean aesthetic for professional signage
- Adjust `buffer_size` to control margins

### Hole Pattern
Holes are arranged in a single horizontal row:
- Distributed evenly from left to right edge of text
- Centered vertically (y=0)
- Start at configurable height above XY plane
- Only appear where they intersect with the text/base geometry

### Font Styling
The tool supports standard OpenSCAD font syntax:
- Basic: `"Font Name"`
- With style: `"Font Name:style=Bold"`
- Multiple styles: `"Font Name:style=Bold Italic"`

## Common Use Cases

### Snap-on Style Signs
For bold, industrial-looking signs similar to tool brand aesthetics:
- Use geometric sans-serif fonts (Futura, Avenir, Helvetica)
- Bold or Bold Italic styles
- All caps text
- Red base with white text (when using colors)

### Customization Workflow
1. Set the text string and font
2. Adjust text and base heights for desired profile
3. Configure buffer size for base width
4. Set hole parameters for mounting requirements
5. Render and export STL for 3D printing

## Technical Notes

### OpenSCAD Operations
- `cube()`: Creates the rectangular base plate
- `linear_extrude()`: Converts 2D text to 3D objects
- `difference()`: Removes holes from solid geometry
- `halign/valign = "center"`: Centers text at origin

### Approximate Text Bounds
The code uses approximations for text dimensions:
- Width: `font_size * len(text_string) * 0.6`
- Height: `font_size * 1.2`

These are rough estimates; actual dimensions depend on the font and character set.

### Performance Considerations
- Higher `$fn` values create smoother holes but slower rendering
- Complex fonts may increase render time
- Keep hole counts reasonable for faster previews

## File Organization

Suggested structure:
```
sign_maker_openscad/
├── WARP.md                 # This file
├── sign_maker.scad         # Main OpenSCAD program
├── examples/               # Example configurations
├── fonts/                  # Custom font files (if needed)
└── exports/               # Generated STL files
```

## Development Tips

### Testing New Fonts
Check available fonts on your system:
```bash
# List all fonts (macOS)
fc-list : family style | sort -u
```

### Quick Iterations
For faster design iteration:
- Use Preview (F5) instead of Render (F6)
- Lower `$fn` during testing
- Reduce hole count temporarily

### Export for 3D Printing
1. Render the model (F6)
2. Export as STL (File > Export > Export as STL)
3. Import into slicer software
4. Configure for multi-material printing if using different colors

## Common Issues

### Font Not Found
If a font doesn't render:
- Check font is installed on system
- Try alternative fonts with similar style
- Verify font name and style syntax

### Holes Not Appearing
- Check `hole_offset` is within object height
- Verify `hole_depth` is appropriate
- Ensure holes intersect with geometry

### Base Too Small or Too Large
- Increase `buffer_size` to add more margin around text
- Base automatically sizes to text + buffer
- Text remains centered on the base

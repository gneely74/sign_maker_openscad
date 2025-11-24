# Sign Maker - 3D Printable Sign Generator

OpenSCAD tool for creating customizable 3D printable signs with flowing base plates and mounting holes.

![Sign Style Example](https://img.shields.io/badge/style-industrial-red) ![OpenSCAD](https://img.shields.io/badge/OpenSCAD-required-blue)

## Features

- ✨ **3D Extruded Text** - Configurable fonts, sizes, and styles
- 📐 **Solid Rectangular Base** - Clean rectangular base plate with configurable margins
- 🔩 **Mounting Holes** - Evenly spaced holes for practical installation
- 🎨 **Multi-Layer Design** - Separate text and base colors for visual depth
- ⚙️ **Highly Customizable** - All parameters exposed for easy modification

## Quick Start

### Prerequisites
- [OpenSCAD](https://openscad.org/downloads.html) installed on your system
- Fonts available on your system (or custom fonts in `fonts/` directory)

### Basic Usage

1. Open `sign_maker.scad` in OpenSCAD
2. Modify parameters at the top of the file:
   ```openscad
   text_string = "YOUR TEXT";
   font_name = "Futura:style=Bold Italic";
   font_size = 40;
   ```
3. Press **F5** to preview (fast)
4. Press **F6** to render (slower, final quality)
5. Export as STL: **File > Export > Export as STL...**
6. Import STL into your 3D printing slicer

## Configuration Parameters

### Text Settings
| Parameter | Default | Description |
|-----------|---------|-------------|
| `text_string` | "SNAP-ON" | Text to display |
| `font_name` | "Futura:style=Bold Italic" | Font family and style |
| `font_size` | 40 | Text size in mm |

### Dimensions
| Parameter | Default | Description |
|-----------|---------|-------------|
| `buffer_size` | 10 | Buffer around text on all sides (mm) |
| `base_height` | 2 | Thickness of base plate (mm) |
| `text_height` | 5 | Height of text above base (mm) |

### Mounting Holes
| Parameter | Default | Description |
|-----------|---------|-------------|
| `hole_diameter` | 8 | Diameter of holes (mm) |
| `hole_depth` | 3.2 | Depth from top surface (mm) |
| `hole_offset` | 0.2 | Height above XY plane (mm) |
| `hole_spacing` | 15 | Distance between holes (mm) |

### Quality
| Parameter | Default | Description |
|-----------|---------|-------------|
| `$fn` | 64 | Circle resolution (higher = smoother) |

## Examples

Check the `examples/` directory for pre-configured designs:

- **snapon_style.scad** - Industrial tool brand aesthetic
- **garage_sign.scad** - Large wall-mounted sign
- **nameplate.scad** - Small desktop nameplate
- **no_holes_decorative.scad** - Decorative piece without holes

## Project Structure

```
sign_maker_openscad/
├── README.md              # This file
├── WARP.md               # Development guidance
├── sign_maker.scad       # Main program
├── examples/             # Example configurations
│   ├── README.md
│   ├── snapon_style.scad
│   ├── garage_sign.scad
│   ├── nameplate.scad
│   └── no_holes_decorative.scad
├── fonts/                # Custom font files
│   └── README.md
└── exports/              # Exported STL files
    └── README.md
```

## Design Tips

### Font Selection
- **Bold fonts** work best for readability
- **Geometric sans-serif** fonts (Futura, Helvetica) create industrial look
- **Serif fonts** (Times, Garamond) for elegant nameplates
- Test fonts: `fc-list : family style | sort -u` (macOS)

### Sizing Guidelines
- **Small** (20-30mm): Nameplates, labels
- **Medium** (40-50mm): Standard signs
- **Large** (60-80mm): Wall-mounted signage

### Multi-Color Printing
1. Use `color()` in the .scad file for visualization
2. Export separate STL files for base and text if needed
3. In your slicer, assign different materials to each part
4. Recommended: Red base + white text for industrial look

### Performance
- Use **F5 (Preview)** for quick iterations
- Lower `$fn` during testing (32 is fast)
- Increase `$fn` for final render (64-128)
- Complex fonts may slow rendering

## 3D Printing

### Recommended Settings
- **Layer Height**: 0.2mm
- **Infill**: 20-30%
- **Supports**: Usually not needed
- **Adhesion**: Brim recommended for larger signs
- **Orientation**: Print with base on build plate

### Multi-Material Setup
Compatible with printers featuring:
- Multiple extruders (Prusa MMU, Palette)
- Multi-color single extruder (Bambu AMS)
- Filament swap mid-print

## Troubleshooting

### Font Not Rendering
- Verify font is installed on system
- Check font name syntax: `"Font Name:style=Bold"`
- Try alternative font with similar style

### Holes Not Appearing
- Ensure `hole_offset` < total height
- Verify `hole_depth` is appropriate
- Check holes intersect with geometry

### Base Too Small or Too Large
- Increase `buffer_size` to add more margin around text
- Base automatically sizes to text + buffer
- Text remains centered on the base

### Slow Rendering
- Lower `$fn` value temporarily
- Reduce number of holes
- Use Preview (F5) instead of Render (F6)

## Advanced Customization

### Custom Hole Patterns
Modify the `create_holes()` module in `sign_maker.scad` to create:
- Two rows of holes
- Corner-only holes
- Irregular spacing

### Variable Text Height
Use different extrusion heights per letter (requires code modification)

### Curved Base
Apply `rotate_extrude()` for cylindrical signs

## Contributing

Improvements welcome! Consider adding:
- New example configurations
- Alternative hole patterns
- Documentation improvements
- Troubleshooting tips

## License

This project is released into the public domain. Use freely for personal or commercial projects.

## Resources

- [OpenSCAD Documentation](https://openscad.org/documentation.html)
- [OpenSCAD Cheat Sheet](https://openscad.org/cheatsheet/)
- [Font Library](https://fonts.google.com/)

---

**Created with OpenSCAD** | **Ready for 3D Printing** | **Fully Customizable**

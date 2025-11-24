# Custom Fonts

Place custom font files (.ttf, .otf) in this directory to use them in your signs.

## Using System Fonts

OpenSCAD can access fonts installed on your system. To list available fonts on macOS:

```bash
fc-list : family style | sort -u
```

## Font Syntax

In your .scad files, reference fonts using:

```openscad
// Basic font
font_name = "Arial";

// Font with style
font_name = "Helvetica:style=Bold";

// Font with multiple styles
font_name = "Futura:style=Bold Italic";
```

## Recommended Fonts for Signs

### Industrial/Tool Brand Style
- **Futura** (Bold, Bold Italic)
- **Avenir** (Heavy, Black)
- **Helvetica** (Bold, Bold Condensed)
- **Impact**

### Elegant/Refined Style
- **Times New Roman** (Bold)
- **Garamond** (Bold)
- **Georgia** (Bold)
- **Bodoni**

### Modern/Clean Style
- **Arial** (Bold)
- **Roboto** (Bold)
- **Open Sans** (Bold)
- **Montserrat** (Bold)

### Decorative/Display
- **Stencil**
- **Copperplate**
- **Trajan**
- **Bank Gothic**

## Adding Custom Fonts

1. Download font file (.ttf or .otf)
2. Place in this directory
3. Reference by filename in your .scad file:
   ```openscad
   font_name = "MyCustomFont:style=Bold";
   ```

## Font Licensing

Ensure you have proper licenses for any fonts you use, especially for commercial projects or distribution.

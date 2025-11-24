# Quick Start Guide

Get started creating your first 3D printable sign in 5 minutes!

## Step 1: Install OpenSCAD

Download and install OpenSCAD from [openscad.org](https://openscad.org/downloads.html)

## Step 2: Open the Main File

1. Launch OpenSCAD
2. Open `sign_maker.scad` from this directory
3. You'll see a preview of "SNAP-ON" sign

## Step 3: Customize Your Text

At the top of the file, find these lines:

```openscad
text_string = "SNAP-ON";
font_name = "Futura:style=Bold Italic";
font_size = 40;
```

Change them to your desired text:

```openscad
text_string = "MY GARAGE";
font_name = "Helvetica:style=Bold";
font_size = 40;
```

## Step 4: Preview Your Design

- Press **F5** (or View > Preview) to see your changes
- The preview updates in a few seconds
- Colors show how parts will separate for multi-material printing

## Step 5: Adjust Parameters (Optional)

### Make It Bigger
```openscad
font_size = 60;  // Increase from 40
```

### Change Base Size
```openscad
buffer_size = 5;  // More space around text
text_height = 8;  // Taller letters
```

### Adjust Holes
```openscad
hole_spacing = 20;  // Holes farther apart
hole_diameter = 10; // Larger holes
```

## Step 6: Final Render

When you're happy with the preview:

1. Press **F6** (or Design > Render)
2. Wait for rendering to complete (may take 30-60 seconds)
3. The status bar shows "Rendering finished"

## Step 7: Export STL

1. Go to **File > Export > Export as STL...**
2. Save to the `exports/` directory
3. Name it descriptively: `mygarage_40mm_2024-11-24.stl`

## Step 8: Print It!

1. Open your 3D printing slicer (Cura, PrusaSlicer, etc.)
2. Import the STL file
3. Recommended settings:
   - Layer height: 0.2mm
   - Infill: 20%
   - Supports: None needed
   - Adhesion: Brim (optional)
4. Slice and print!

## Common First-Time Adjustments

### "I don't see any text!"
- Your font might not be installed
- Try changing `font_name` to `"Arial:style=Bold"`

### "The holes go through everything!"
- Reduce `hole_depth` to 3.2 or less
- Should be less than `text_height + base_height`

### "It's too slow!"
- For preview, use **F5** not F6
- Lower `$fn` to 32 for faster previews
- Increase back to 64 for final render

### "The base doesn't connect my letters!"
- Increase `buffer_size` from 3 to 5 or more
- This expands the base outward

## Next Steps

Once you're comfortable:

- Check out the `examples/` directory for more designs
- Read `README.md` for detailed parameter explanations
- Experiment with different fonts (see `fonts/README.md`)
- Try multi-color printing with separate base and text

## Need Help?

- **OpenSCAD Docs**: [openscad.org/documentation](https://openscad.org/documentation.html)
- **Font Issues**: Run `fc-list : family style | sort -u` in terminal to see available fonts
- **3D Printing**: Check your printer manufacturer's documentation

---

**Happy printing! 🎨🔧**

# Exported STL Files

This directory is for storing exported STL files ready for 3D printing.

## Export Process

1. Open your .scad file in OpenSCAD
2. Press **F6** to fully render the model (this may take time)
3. Go to **File > Export > Export as STL...**
4. Save to this directory with a descriptive name

## File Naming Convention

Use descriptive names that include key details:

```
text_fontsize_dimensions_date.stl
```

Examples:
- `SNAPON_40mm_red-white_2024-11-24.stl`
- `GARAGE_60mm_orange-black_2024-11-24.stl`
- `nameplate_20mm_gold_2024-11-24.stl`

## 3D Printing Tips

### Single Material Prints
- Print with the base on the build plate
- Support structures usually not needed
- Layer height: 0.2mm typical
- Infill: 20-30% is sufficient

### Multi-Material/Multi-Color
1. Export base and text as separate STL files
2. Import both into your slicer
3. Assign different materials/colors to each part
4. Ensure proper alignment (both should be centered at origin)

### Print Settings
- **Base layer**: Use stronger adhesion (raft or brim)
- **Text layer**: Ensure good bridging settings
- **Holes**: May need light drilling after printing for precise fit

### Post-Processing
- Remove support material if used
- Light sanding for smoother finish
- Paint if using single-color filament
- Clear coat for durability

## Slicer Software

Compatible with all major slicers:
- **PrusaSlicer** (recommended for multi-material)
- **Cura**
- **Simplify3D**
- **Bambu Studio**

## File Size

Large signs or high resolution (`$fn`) may produce large STL files. Consider:
- Reducing `$fn` slightly if file is too large
- Using binary STL format (default in OpenSCAD)
- Compressing old files if storage is limited

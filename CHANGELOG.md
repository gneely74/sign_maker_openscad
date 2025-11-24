# Changelog

All notable changes to the Sign Maker project will be documented in this file.

## [1.0.0] - 2024-11-24

### Added
- Initial release of Sign Maker OpenSCAD tool
- Main `sign_maker.scad` program with full parametric controls
- Flowing base plate generation using `offset()` function
- Evenly-spaced mounting hole system
- Multi-layer design with separate text and base colors
- Four example configurations:
  - `snapon_style.scad` - Industrial tool brand aesthetic
  - `garage_sign.scad` - Large wall-mounted sign
  - `nameplate.scad` - Small desktop nameplate
  - `no_holes_decorative.scad` - Hole-free decorative piece
- Comprehensive documentation:
  - `README.md` - Main project documentation
  - `WARP.md` - Development guidance for WARP AI
  - `QUICKSTART.md` - Step-by-step beginner guide
  - `examples/README.md` - Example descriptions and usage
  - `fonts/README.md` - Font usage and recommendations
  - `exports/README.md` - Export and 3D printing guide
- Project structure with organized directories (examples/, fonts/, exports/)
- `.gitignore` for OpenSCAD projects

### Features
- Fully parametric design - all dimensions configurable
- Support for any OpenSCAD-compatible font
- Automatic hole spacing calculation based on text width
- Color visualization for multi-material printing
- Helper modules for debugging (commented out)
- Quality settings via `$fn` parameter

### Documentation
- Complete parameter reference tables
- Design tips and best practices
- Troubleshooting guide
- Font selection recommendations
- 3D printing settings guide
- Advanced customization examples

---

## Future Enhancements (Planned)

### Potential Features
- [ ] Multiple hole row patterns
- [ ] Corner-only hole option
- [ ] Curved/cylindrical base option
- [ ] Variable letter heights
- [ ] Automatic optimal hole spacing calculator
- [ ] Braille text support
- [ ] Custom logo/icon integration
- [ ] Rounded corner options for base

### Documentation Improvements
- [ ] Video tutorial links
- [ ] Photo gallery of printed examples
- [ ] Common font comparison guide
- [ ] Printer-specific slicer settings

### Code Enhancements
- [ ] Modularize for easier customization
- [ ] Add validation for parameter ranges
- [ ] Performance optimization for large text
- [ ] Export scripts for batch processing

---

## Version History Format

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

Types of changes:
- **Added** - New features
- **Changed** - Changes to existing functionality
- **Deprecated** - Soon-to-be removed features
- **Removed** - Removed features
- **Fixed** - Bug fixes
- **Security** - Security fixes

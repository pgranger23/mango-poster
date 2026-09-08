# MANGO Scientific Poster (Typst A0 Template)

A publication-grade scientific conference poster designed with [Typst](https://typst.app/) for:
> **MANGO: An Autodiff Neutrino Oscillation Engine for End-to-End Differentiable Analysis Pipelines**  
> *Pierre Granger (CERN)*  
> [arXiv:2608.13429 [hep-ex]](https://arxiv.org/abs/2608.13429) | [GitHub: pgranger23/mango-osc](https://github.com/pgranger23/mango-osc) | [DOI: 10.5281/zenodo.21774110](https://doi.org/10.5281/zenodo.21774110)

This repository serves as both the **source of truth for the MANGO poster** and an **adaptable, modern Typst template for future scientific posters** (particle physics, astrophysics, AI/ML, and computational science).

---

## 🖨️ Production Deliverables Included

| File | Description | Dimensions / Specs |
| :--- | :--- | :--- |
| **`MANGO_Poster_A0_PierreGranger_CERN.pdf`** | Official print-ready master vector PDF | ISO A0 ($841 \times 1189\text{ mm}$), single page, vector text & math |
| **`MANGO_Poster_A0_PierreGranger_CERN_300dpi.png`** | Master raster RIP render | $9933 \times 14043\text{ px}$ ($300\text{ PPI}$ at A0) |
| **`poster.pdf`** | Standard build PDF | ISO A0 ($841 \times 1189\text{ mm}$) |
| **`poster.png`** | Fast web preview image | $4967 \times 7022\text{ px}$ ($150\text{ PPI}$) |
| **`poster.typ`** | Master Typst source code | Clean, modular Typst 0.15+ layout |

---

## 📐 Template Specifications & Architecture

- **Canvas Size**: ISO A0 Portrait ($841\text{ mm} \times 1189\text{ mm} \equiv 2383.94 \times 3370.39\text{ pt}$).
- **Page Margins**: `(x: 22mm, top: 16mm - 5pt, bottom: 16mm - 5pt)`.
- **Grid System**: 2-column balanced grid (`columns: (1fr, 1fr)`, `gutter: 22pt`) with exact bottom baseline alignment across columns.
- **Card Micro-Architecture**:
  - Content Cards: Opaque white fill (`fill: white`) with $1.5\text{ pt}$ border stroke and $14\text{ pt}$ corner radius.
  - Sub-cards / Callouts: Standardized $2\text{ pt}$ semantic accent border stroke with $10\text{ pt}$ radius.
  - Background Art: Full-canvas fluid dynamics artwork insulated behind solid white cards.
- **Typography & 2-Meter Readability**:
  - Title: $52\text{ pt}$ bold
  - Box Headers: $27\text{ pt}$ bold with semantic accent colors
  - Body Text: $22\text{ pt}$ ($0.50\text{ em}$ leading) — readable from $1.5 - 2\text{ m}$ distance
  - Figure Captions: $16 - 17.5\text{ pt}$
  - Parameter Micro-cards: $15.5\text{ pt}$ (guaranteed A0 floor)

---

## 🎨 4-Pillar Semantic Design System

The template implements a cohesive 4-pillar brand palette that semantically distinguishes physics domains:

```typst
#let brand-dark-teal   = rgb("#092227")  // Header & Footer Banners
#let brand-orange      = rgb("#ea580c")  // Geometry & Chord Propagation (Box 1)
#let brand-dark-green  = rgb("#166534")  // Matter Oscillations & MSW Effect (Box 2/3)
#let brand-dark-cyan   = rgb("#0e7490")  // BSM Decoherence & Nested AD Fisher (Box 3/4)
#let brand-gold        = rgb("#f59e0b")  // Physics Outlooks & Accents (Box 5)
```

---

## 🚀 Quick Start & Build Instructions

### Prerequisites
Install [Typst](https://github.com/typst/typst) (v0.12+ / v0.15+ recommended):
```bash
# macOS (Homebrew)
brew install typst

# Linux / Precompiled binary
cargo install --locked typst-cli
```

### Build Targets

```bash
# Build all standard deliverables (PDF + PNG preview + print PDF)
make

# Or run the build script directly
./build.sh

# Live preview with auto-recompile on save
make watch
# (or: typst watch poster.typ poster.pdf)

# Render ultra-high-resolution 300 DPI master image (for commercial print shops)
make print-png
```

---

## 📁 Repository Structure

```
mango-poster/
├── poster.typ                             # Master Typst layout source
├── MANGO_Poster_A0_PierreGranger_CERN.pdf # Official print-ready master PDF (A0)
├── MANGO_Poster_A0_PierreGranger_CERN_300dpi.png # 300 DPI master raster render
├── poster.pdf                             # Compiled vector PDF
├── poster.png                             # Fast web preview render (150 PPI)
├── assets/                                # Branding logos, QR codes, backgrounds
│   ├── cern_logo_white.svg                # Official CERN vector logo
│   ├── logo_clean_trans.png               # MANGO logo (transparent)
│   ├── jax_logo_500.png                   # JAX official logo
│   ├── qr_arxiv.png                       # High-res arXiv preprint QR code
│   ├── qr_github.png                      # High-res GitHub repository QR code
│   ├── mango_juice_background.jpg         # AI-upscaled organic fluid art background
│   └── mango_vector_background.svg        # Alternative pure mathematical vector background
├── figures/                               # Scientific figures (vector PDFs and PNGs)
│   ├── mango_chord_geometry.pdf           # Figure 1: Chord Earth geometry
│   ├── mango_rho_grad.pdf                 # Figure 2: 5-channel Jacobian map
│   ├── fig_solar_autodiff.pdf             # Figure 3: Continuous solar MSW kernel
│   ├── mango_bsm_derivatives.pdf          # Figure 4: Non-analytic BSM limits
│   └── tomography_fisher.pdf              # Figure 5: 11-parameter Earth tomography
├── Makefile                               # Build automation
├── build.sh                               # Shell build runner
└── README.md                              # Poster and template documentation
```

---

## 🛠️ Reusing as a Template for Future Posters

To adapt this layout for another scientific project:
1. **Header**: Edit lines 170–235 in `poster.typ` with your project title, author affiliations, institutional logo, and project logo.
2. **Boxes**: The poster uses a modular `#poster-box(title: "...", accent-color: ...)[...]` function. Adjust the box titles and accent colors.
3. **Column Balance**:
   - Column 1 contains Boxes 1 and 2.
   - Column 2 contains Boxes 3, 4, and 5.
   - Fine-tune inter-box spacing (`#v(10pt)`) or hero figure widths to align the bottom of Column 1 with Column 2.
4. **Footer**: Update QR codes in `assets/` and the banner text in lines 620–680.
5. **Background**: Keep the organic fluid background (`assets/mango_juice_background.jpg`) or switch to pure vector background (`assets/mango_vector_background.svg`).

---

## License

- Source code & template: [MIT License](https://opensource.org/licenses/MIT)
- Figures & content: © 2026 Pierre Granger (CERN), [arXiv:2608.13429](https://arxiv.org/abs/2608.13429)


#!/usr/bin/env bash
set -euo pipefail

echo "==> Compiling Typst poster to standard PDF (poster.pdf)..."
typst compile poster.typ poster.pdf

echo "==> Compiling production print-ready A0 PDF (MANGO_Poster_A0_PierreGranger_CERN.pdf)..."
typst compile poster.typ MANGO_Poster_A0_PierreGranger_CERN.pdf

echo "==> Rendering 150 PPI preview PNG (poster.png)..."
typst compile --format png --ppi 150 poster.typ poster.png

echo "==> Build complete!"
ls -lh poster.pdf MANGO_Poster_A0_PierreGranger_CERN.pdf poster.png

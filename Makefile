.PHONY: all pdf png print-pdf print-png watch clean

all: pdf png print-pdf

pdf:
	typst compile poster.typ poster.pdf

png:
	typst compile --format png --ppi 150 poster.typ poster.png

print-pdf:
	typst compile poster.typ MANGO_Poster_A0_PierreGranger_CERN.pdf

print-png:
	typst compile --format png --ppi 300 poster.typ MANGO_Poster_A0_PierreGranger_CERN_300dpi.png

watch:
	typst watch poster.typ poster.pdf

clean:
	rm -f poster.pdf poster.png MANGO_Poster_A0_PierreGranger_CERN.pdf MANGO_Poster_A0_PierreGranger_CERN_300dpi.png

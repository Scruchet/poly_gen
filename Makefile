TARGETS=alternants se 2ia gba meca gc is mat
SVGs=$(addsuffix .svg,$(TARGETS))
JPGs=$(addsuffix .jpg,$(TARGETS))
PDFs=$(addsuffix .pdf,$(TARGETS))

#all: $(SVGs) $(JPGs) $(PDFs)
all : $(PDFs)
#%.svg: %.dot
#	dot -Tsvg $< > $@

#%.jpg: %.dot
#	dot -Tjpg $< > $@

%.pdf: %.dot
	dot -Tpdf $< > $@

clean:
	$(RM) *.svg *.jpg *.pdf

.PHONY: $(TARGETS) clean

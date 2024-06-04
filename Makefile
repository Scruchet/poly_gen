TARGETS=alternants se 2ia gba meca gc is mat
SVGs=$(addsuffix .svg,$(TARGETS))
JPGs=$(addsuffix .jpg,$(TARGETS))

all: $(SVGs) $(JPGs)

%.svg: %.dot
	dot -Tsvg $< > $@

%.jpg: %.dot
	dot -Tjpg $< > $@

clean:
	$(RM) *.svg *.jpg

.PHONY: $(TARGETS) clean

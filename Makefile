
GROFF = groff
GOPTS = -wmac -e -t -R -U -ms -ma -Mmacros -Kutf8

PS ?= $(patsubst %.ms, %.ps, $(wildcard *.ms))

.PHONY: all clean

all: $(PS)

clean:
	$(RM) *.ps *.ll

%.ps: %.ms
	$(GROFF) $(GOPTS) $< > $@
	$(GROFF) $(GOPTS) $< > $@

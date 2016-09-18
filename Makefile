OPENSCAD = /usr/bin/openscad

chisel_files = $(wildcard chisel/*_example.scad)
chisel_pngs = $(chisel_files:.scad=.png)
chisel_stls = $(chisel_files:.scad=.stl)
chisel_outputs = $(chisel_pngs) $(chisel_stls)

build_files = $(chisel_outputs)

.PHONY: all
all: build

.PHONY: build
build: $(build_files)

%.png: %.scad
	 $(OPENSCAD) --projection=ortho --camera=0,0,0.5,0,0,90,3 -o $(basename $@)_top$(suffix $@) $<
	 $(OPENSCAD) --projection=ortho --camera=0,0,0.5,90,0,0,3 -o $(basename $@)_front$(suffix $@) $<
	 $(OPENSCAD) --projection=ortho --camera=0,0,0.5,90,0,90,3 -o $(basename $@)_right$(suffix $@) $<

%.stl: %.scad
	$(OPENSCAD) -o $@ $<

.PHONY: clean
clean:
	$(RM) $(build_files)

include make-includes/variables.mk

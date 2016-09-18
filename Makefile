OPENSCAD = /usr/bin/openscad
OPENSCAD_OPTIONS = --projection=ortho --camera=0,0,0.5,90,0,0,3

chisel_files = $(wildcard chisel/*_example.scad)
chisel_pngs = $(chisel_files:.scad=.png)
chisel_stls = $(chisel_files:.scad=.stl)
chisel_outputs = $(chisel_pngs) $(chisel_stls)

build_files = $(chisel_outputs)

openscad_build_command = $(OPENSCAD) $(OPENSCAD_OPTIONS) -o $@ $<

.PHONY: all
all: build

.PHONY: build
build: $(build_files)

%.png: %.scad
	$(openscad_build_command)
%.stl: %.scad
	$(openscad_build_command)

.PHONY: clean
clean:
	$(RM) $(build_files)

include make-includes/variables.mk

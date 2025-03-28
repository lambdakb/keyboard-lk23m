NAME	:= LK23M
GITROOT	:= $(shell git rev-parse --show-toplevel)
KIBOT	:= $(GITROOT)/.kibot/bin/kibot

default: pcb case step

test:
	$(info + [$(NAME)] $@)
	$(KIBOT) -c .kibot/test.kibot.yaml -b ./pcb/lk23m-pcb.kicad_pcb

export: pcb case

pcb:
	$(info + [$(NAME)] $@)
	mkdir -p ./output/pcb
	$(KIBOT) -c .kibot/pcb.kibot.yaml  -b ./pcb/lk23m-pcb.kicad_pcb

case: case-fr4 case-dxf

case-fr4:
	$(info + [$(NAME)] $@)
	mkdir -p ./output/case/fr4
	$(KIBOT) -c .kibot/case.kibot.yaml -d output/case/fr4 -b ./case/fr4/lk23m-plate.kicad_pcb
	$(KIBOT) -c .kibot/case.kibot.yaml -d output/case/fr4 -b ./case/fr4/lk23m-bottom.kicad_pcb

case-dxf:
	$(info + [$(NAME)] $@)
	mkdir -p ./output/case/dxf
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/lk23m-plate.kicad_pcb case_dxf
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/lk23m-bottom.kicad_pcb case_dxf

step:
	$(info + [$(NAME)] $@)
	mkdir -p ./output/step
	$(KIBOT) -c .kibot/pcb.kibot.yaml  -d output -b ./pcb/lk23m-pcb.kicad_pcb 3d_step
	$(KIBOT) -c .kibot/case.kibot.yaml -d output -b ./case/fr4/lk23m-plate.kicad_pcb 3d_step
	$(KIBOT) -c .kibot/case.kibot.yaml -d output -b ./case/fr4/lk23m-bottom.kicad_pcb 3d_step

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/pcb output/case output/step

.PHONY: default test export pcb case case-fr4 case-dxf clean

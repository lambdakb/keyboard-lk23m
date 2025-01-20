NAME	:= LK23M
GITROOT	:= $(shell git rev-parse --show-toplevel)
KIBOT	:= $(GITROOT)/.bin/kibot

default: clean export

test:
	$(info + [$(NAME)] $@)
	$(KIBOT) -c .kibot/test.kibot.yaml -b ./pcb/lk23m-pcb.kicad_pcb

export: pcb case-fr4

pcb:
	$(info + [$(NAME)] $@)
	$(KIBOT) -c .kibot/pcb.kibot.yaml -b ./pcb/lk23m-pcb.kicad_pcb

case-fr4:
	$(info + [$(NAME)] $@)
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/lk23m-plate.kicad_pcb
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/lk23m-bottom.kicad_pcb

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/

.PHONY: default test export pcb case-fr4 clean

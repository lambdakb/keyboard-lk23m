NAME	:= LK23M
GITROOT	:= $(shell git rev-parse --show-toplevel)
KIBOT	:= $(GITROOT)/.kibot/bin/kibot

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
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/enig/lk23m-plate-enig.kicad_pcb
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/enig/lk23m-bottom-enig.kicad_pcb
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/silk/lk23m-plate-silk.kicad_pcb
	$(KIBOT) -c .kibot/case.kibot.yaml -b ./case/fr4/silk/lk23m-bottom-silk.kicad_pcb

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/

.PHONY: default test export pcb case-fr4 clean

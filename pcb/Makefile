GITROOT	:= $(shell git rev-parse --show-toplevel)
KIBOT	:= $(GITROOT)/.bin/kibot

test:
	$(KIBOT) -c .kibot/test.kibot.yaml

export:
	$(KIBOT) -c .kibot/export.kibot.yaml

clean:
	rm -rf output/

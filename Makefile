PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)
include .env
export

default: clean build

clean:
	@rm -rf target tmp

build:
	@$(CURDIR)/src/bin/fetch
	@$(CURDIR)/src/bin/package-tar
	@$(CURDIR)/src/bin/package-zip

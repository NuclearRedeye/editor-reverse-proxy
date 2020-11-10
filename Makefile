#!/usr/bin/make -f
.PHONY: lint test clean distclean build start container stop logs

.DEFAULT_GOAL := start

TAG ?= latest

# Required Targets
lint:
	@echo "Nothing to do for target '$@'"

test:
	@echo "Nothing to do for target '$@'"

clean:
	@docker-compose rm --stop --force -v
	@-rm -rf ${CURDIR}/tmp/bucket

distclean: clean
	@docker image prune --all --force --filter="name=editor-*"

build:
	@docker-compose build

start: build
	@-mkdir -p ${CURDIR}/tmp/bucket
	@docker-compose up --detach

dist:
	@echo "Nothing to do for target '$@'"

# Targets specific to this project
stop:
	@docker-compose down

logs:
	@docker-compose logs --follow
#!/usr/bin/make -f
#.PHONY: start_api
#
#start_api:
#	$(MAKE) -C ../editor-article-store start
#	cd ../editor-article-store
#	docker exec localstack awslocal s3 cp /resources/articles/elife-54296-vor-r1.zip s3://kryia/#
#
#start_nginx:
#	docker-compose up -d nginx
#
#start_all: start_api start_nginx
#	npm run start

.PHONY: lint test clean distclean build start container stop logs

.DEFAULT_GOAL := start

TAG ?= latest

# Required Targets
lint:
	@echo "Nothing to do for target '$@'"

test:
	@echo "Nothing to do for target '$@'"

clean:
	@docker-compose rm --stop --force

distclean: clean
	@docker image prune --all --force --filter="name=editor-*"

build:
	@docker-compose build

start: build
	@docker-compose up --detach

dist:
	@echo "Nothing to do for target '$@'"

# Targets specific to this project
stop:
	@docker-compose down

logs:
	@docker-compose logs --follow
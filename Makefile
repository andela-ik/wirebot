PROJECT_NAME ?= wire-bot

.PHONY: help

## Show help
help:
	@echo ''
	@echo 'Usage:'
	@echo '${YELLOW} make ${RESET} ${GREEN}<target> [options]${RESET}'
	@echo ''
	@echo 'Targets:'
	@echo ''
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		message = match(lastLine, /^## (.*)/); \
		if (message) { \
			command = substr($$1, 0, index($$1, ":")-1); \
			message = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} %s\n", command, message; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
	@echo ''
	@echo ''

## Start local development server
start:
	${INFO} "Building required docker images"
	@ docker build -t wire-bot-image .
	${INFO} "Build Completed successfully"
	@ echo " "
	${INFO} "Starting local development server"
	@ docker run wire-bot-image

clean:
	${INFO} "Cleaning your local environment"
	${INFO} "Stopping the docker container"
	@ docker stop `docker ps -qa -l`
	${INFO} "Deleting the docker container"
	@ docker rm `docker ps -qa -l`
	${SUCCESS} "Done"

# COLORS
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
NC := "\e[0m"
RESET  := $(shell tput -Txterm sgr0)
# Shell Functions
INFO := @bash -c 'printf $(YELLOW); echo "===> $$1"; printf $(NC)' SOME_VALUE
SUCCESS := @bash -c 'printf $(GREEN); echo "===> $$1"; printf $(NC)' SOME_VALUE
# Shell Functions
INFO := @bash -c ' printf $(YELLOW); echo "===> $$1";  printf $(NC)' SOME_VALUE

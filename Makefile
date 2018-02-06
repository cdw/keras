## DOCKER TASKS

# Import config.
# Can change default config with `make cnf="config_special.env" build`
cnf ?= config.env
include $(cnf)
export $(shell sed 's/=.*//' $(cnf))

# Build the container
build: ## Build the container
	docker build -t $(APP_NAME) .

build-nc: ## Build the container without caching
	docker build --no-cache -t $(APP_NAME) .

run: ## Run container 
	# Default to port and gpu configured in `config.env`
	# Override with `make run PORT=????` and/or `make run CUDA_VISIBLE_DEVICES=???`
	docker run -i -t --rm --env-file=./config.env -p=$(PORT):8888 -v $(LOCAL_MOUNT):/notebooks/nfs --ipc=host $(APP_NAME):latest

run_cpu: ## Run container 
	docker run -i -t --rm --env-file=./config.env -p=$(PORT):8888 -v $(LOCAL_MOUNT):/notebooks/nfs --ipc=host $(APP_NAME):latest-cpu

up: build run ## Run container on port configured in `config.env` (Alias to run)

stop: ## Stop and remove a running container
	docker stop $(APP_NAME); docker rm $(APP_NAME)

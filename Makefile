PACKER=@docker-compose run --rm packer

validate:
	$(PACKER) validate ecs-with-ssm.json

vars.json:
	cp vars.json.example vars.json

build: vars.json
	$(PACKER) build -var-file=vars.json ecs-with-ssm.json

shell:
	docker-compose run --entrypoint bash --rm packer

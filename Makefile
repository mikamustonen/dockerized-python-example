# Build with `make image_name=<image-name> .build
.build: Dockerfile Pipfile Pipfile.lock
	@echo 'Building the Docker image...'
	docker build . -f Dockerfile -t $(image_name)
	@touch .build

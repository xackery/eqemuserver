VERSION=0.0.3
docker-build:
	@(docker build -t eqemuserver .)
docker-push: docker-build
	@(docker tag eqemuserver eqemu/server:$(VERSION))	
	@(docker push eqemu/server:$(VERSION))
	@(docker tag eqemuserver eqemu/server:latest)
	@(docker push eqemu/server:latest)
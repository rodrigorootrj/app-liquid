REPO=rodrigorootrj
PROJECT=app-liquid
VERSION=$(shell cat version)
TAG=${REPO}/${PROJECT}:${VERSION}
LABEL=${ARTIFACT}

echo:
	@echo ${TAG}
build:
	@docker	build . -t ${TAG}
build-debuger:
	@docker	build . -t ${TAG}-debuger -f DockerfileDebuger
shell: 
	@docker run -it --rm  --mount type=bind,source="$(PWD)"/src,target=/app  -p 5001:5000 --name ${LABEL} --entrypoint /bin/sh ${TAG}
run: 
	@docker run -it --rm  --mount type=bind,source="$(PWD)"/src,target=/app  -p 5001:5000 --name ${LABEL} ${TAG} /usr/local/bin/python /app/__init__.py
stop:
	@docker stop ${LABEL}
##
shell-debuger: 
	@docker run -it --rm  --mount type=bind,source="$(PWD)"/src,target=/app  -p 5001:5000 --name ${LABEL} --entrypoint /bin/sh ${TAG}-debuger

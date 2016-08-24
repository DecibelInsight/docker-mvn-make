#
# Makefile
# vagrant, 2016-07-24 12:42
#

VERSION=0.6
NAME=mhristof/mvn-make

default: build

tag: build
	docker tag $(NAME) $(NAME):$(VERSION)
	docker tag $(NAME) $(NAME):latest
	git tag $(VERSION)

push: tag
	git push --tags
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest

build:
	docker build -t $(NAME) .

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#

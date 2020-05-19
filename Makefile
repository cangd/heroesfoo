TOUR_OF_HEROES_IMAGE := angular_tour_of_heroes
PROJECT_NAME := angular-tour-of-heroes

build:
	docker build --tag $(TOUR_OF_HEROES_IMAGE) .
	@docker images

init:
	docker run --volume ${PWD}/src:/src $(TOUR_OF_HEROES_IMAGE) ng new ${PROJECT_NAME}

run:
	docker run --publish 4200:4200 --name="angulartut" -v ${PWD}/src/${PROJECT_NAME}:/src $(TOUR_OF_HEROES_IMAGE)

exec:
	docker exec -it angulartut /bin/bash
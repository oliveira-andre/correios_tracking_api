APP := api
RUN := docker-compose run --rm $(APP)

run:
	$(RUN) $(c)

up:
	docker-compose up

bundle:
	$(RUN) bundle check || $(RUN) bundle install

drop_database: bundle
	$(RUN) rake db:drop

create_database: drop_database
	$(RUN) rake db:create

migrate_database: create_database
	$(RUN) rake db:migrate

reset: migrate_database

setup:
	docker-compose build
	make reset

console:
	$(RUN) rake c



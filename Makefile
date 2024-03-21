.PHONY: runserver
runserver:
	poetry run python -m dpsmsm.manage runserver

.PHONY: migrate
migrate:
	poetry run python -m dpsmsm.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m dpsmsm.manage makemigrations

.PHONY: install
install:
	poetry install

.PHONY: superuser
superuser:
	poetry run python -m dpsmsm.manage createsuperuser


.PHONY: update
update: install migrate migrations ;

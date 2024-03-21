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

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: update
update: install migrate migrations install-pre-commit ;

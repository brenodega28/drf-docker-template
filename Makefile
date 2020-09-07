# Local commands

build:
	docker-compose -f docker-compose-local.yml build

local:
	docker-compose -f docker-compose-local.yml up

local-windows:
	docker-compose -f docker-compose-local.yml run --service-ports --rm django python manage.py runserver 0.0.0.0:8000

test:
	docker-compose -f docker-compose-local.yml run --rm django python manage.py test

migrations:
	docker-compose -f docker-compose-local.yml run --rm django python manage.py makemigrations

migrate-local:
	docker-compose -f docker-compose-local.yml run django python manage.py migrate

superuser-local:
	docker-compose -f docker-compose-local.yml run django python manage.py createsuperuser

collectstatic-local:
	docker-compose -f docker-compose-local.yml run django python manage.py collectstatic
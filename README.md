# Django DRF Template

#### <b>Language</b>: Python 3.8

#### <b>Frameworks</b>:

- Django 3.0
- DRF 3.11

#### <b>Other</b>: Docker

## How to Clone

With the script below its possible to clone this repo without getting the template's commits.

```bash
git clone --depth=0 https://github.com/brenodega28/drf-docker-template.git project_name
```

## Running Local

Make sure to create the local.env file _(using local.env.sample as a guide)_ before running.

```bash
cp local.env.sample local.env
make build # first time only
make local # use this if mac or linux
make local-windows # use if windows (due to some exposing problems using wsl2)
```

## Other Commands

Some other commands stored on the Makefile.

```bash
make migrate-local # runs python manage.py migrate
make test # runs python manage.py test
make migrations # runs python manage.py makemigrations
make superuser-local # runs python manage.py createsuperuser

```

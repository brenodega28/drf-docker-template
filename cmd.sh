#!/bin/bash

set -e

if [[ $COMMAND = "runserver" ]]; then
    echo "Running runserver"
    exec python manage.py runserver 0.0.0.0:8000
fi
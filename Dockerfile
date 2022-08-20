FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# We could use plain pip, or poetry, or conda, but I've chosen pipenv
RUN pip install pipenv && apt-get update && apt-get install -y --no-install-recommends gcc
COPY Pipfile Pipfile.lock .
RUN PIPENV_VENV_IN_PROJECT=1 pipenv install

# Note that we don't copy the source to the image, we'll mount it when spinning
# up the container instead.
WORKDIR /src

# We also don't set up an entrypoint here but specify it in the `run` script.
# That allows us to pass command-line arguments to the script easily.

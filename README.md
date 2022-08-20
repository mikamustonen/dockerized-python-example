# Dockerized Python script example

This is an example of how to Dockerize the dependencies of a Python script so
that one can easily just clone this repository and run the script, with no
additional setup (assuming that the system has Docker and Make installed).

The command to run the script is simply
```bash
./run
```
This automatically builds the Docker image first if necessary. Building
the image the first time might take around ten seconds.

The Docker image contains the Python interpreter and the dependencies, but not
the Python script. The contents of the `src` directory are mounted as a volume
when the script is run. This way we only need to rebuild the image when there
is a change in the dependencies, and can iterate quickly when working on
the script.

The example script in `main.py` demonstrates how the command-line arguments
given to the `./run` script are passed onwards to the Python script. Try,
for example,
```bash
./run --help
```

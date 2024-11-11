# Night lines
This is a complete ros development environment for ardupilot development with mission planner, sitl and mavros
You will use this as a tamplate for your final project for the course

## Installation
Run:
```bash
./scripts/setup_dev_env.sh
```
Make sure you `reboot` after running the script

## Get started
Open a terminal, `cd` into the root directory and run `code .`
When vscode finished loading, Click 'reopen in container' on the bottom right of your display and wait for the dev container to build (this may take a long time)

## Simulation
To start the simulation, run
```bash
make full_simulation
```
It may take some time for all the dockers to build, be patient.
You can click on each of the bash,sitl,mission_planner,mavros windows to see build progess and runtime logs

To stop the simulation run:
```bash
make kill_simulation
```

## Build and deploy
To build the project, run:
```bash
make bundle
```
When the build process finished, the output will be at bundle/night_lines.deb
Copy it to the jeston you flashed with sdk-manager and run `sudo apt install ./night_lines.deb`




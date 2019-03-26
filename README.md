# SACmodel
Neuron model of the Starburst Amacrine Cell and Direction Selective Circuit

## Installation

clone the repository from github

```bash
$ git clone https://github.com/jzlab/SACmodel
```

## Usage

### Compile the model
from the repository root directory

```bash
$ cd src/
$ nrnivmodl
```
this will create a x86_64 directory with the compiled files

Make sure to always delete this folder and recompile after any code changes

### Run an experiment with a bash script

The best way to run experiments with this code repository is to handle all prep, cleanup and running from a shell script. 

This script should:
- cd into the src directory
- Create any output text files you plan to write to
- delete the x86_64 folder if it exists
- Compile the model using `nrnivmodl`
- Run the model using a call to `nrngui`
- Move all the files out of the src directory to wherever you want to put them

See run_SingleSACExperiment.sh for an example

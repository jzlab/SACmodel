cd src/


rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl

echo "Running Experiment..."
nrngui MainA.hoc
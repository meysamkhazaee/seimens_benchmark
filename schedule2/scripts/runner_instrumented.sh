ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp schedule.c result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o schedule.exe schedule.c -w
mkdir outputs


gcov schedule.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm schedule.c
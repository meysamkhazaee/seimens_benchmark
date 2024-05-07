# Change to the current directory
cd $PWD
cp runner.sh runner_instrumented.sh ../source.alt/source.orig
cd ../source.alt/source.orig
./runner.sh
./runner_instrumented.sh    
rm runner.sh runner_instrumented.sh     
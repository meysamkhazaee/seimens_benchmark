cd $PWD
cd ..
ROOT=$PWD # set root of project
cd $ROOT/scripts

chmod +x runner_instrumented.sh # give require access if not garunted
cp runner_instrumented.sh $ROOT/source.alt/source.orig
cd $ROOT/source.alt/source.orig

echo -e ">>>>>>> running instrumented_code source.orig/v0 ..."
./runner_instrumented.sh $ROOT     
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v1
cd $ROOT/versions.alt/versions.orig/v1

echo -e ">>>>>>> running instrumented_code versions.orig/v1 ..."
./runner_instrumented.sh $ROOT  
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v2
cd $ROOT/versions.alt/versions.orig/v2

echo -e ">>>>>>> running instrumented_code versions.orig/v2 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v3
cd $ROOT/versions.alt/versions.orig/v3

echo -e ">>>>>>> running instrumented_code versions.orig/v3 ..."
./runner_instrumented.sh $ROOT   
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v4
cd $ROOT/versions.alt/versions.orig/v4

echo -e ">>>>>>> running instrumented_code versions.orig/v4 ..."
./runner_instrumented.sh $ROOT     
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v5
cd $ROOT/versions.alt/versions.orig/v5

echo -e ">>>>>>> running instrumented_code versions.orig/v5 ..."
./runner_instrumented.sh $ROOT   
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v6
cd $ROOT/versions.alt/versions.orig/v6

echo -e ">>>>>>> running instrumented_code versions.orig/v6 ..."
./runner_instrumented.sh $ROOT   
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v7
cd $ROOT/versions.alt/versions.orig/v7

echo -e ">>>>>>> running instrumented_code versions.orig/v7 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v8
cd $ROOT/versions.alt/versions.orig/v8

echo -e ">>>>>>> running instrumented_code versions.orig/v8 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v9
cd $ROOT/versions.alt/versions.orig/v9

echo -e ">>>>>>> running instrumented_code versions.orig/v9 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"



cd $ROOT
echo -e ">>>>>>> optimize instrumentation result of all executions"
cp source.alt/source.orig/result_instrumented/v0.txt \
   versions.alt/versions.orig/v1/result_instrumented/v1.txt \
   versions.alt/versions.orig/v2/result_instrumented/v2.txt \
   versions.alt/versions.orig/v3/result_instrumented/v3.txt \
   versions.alt/versions.orig/v4/result_instrumented/v4.txt \
   versions.alt/versions.orig/v5/result_instrumented/v5.txt \
   versions.alt/versions.orig/v6/result_instrumented/v6.txt \
   versions.alt/versions.orig/v7/result_instrumented/v7.txt \
   versions.alt/versions.orig/v8/result_instrumented/v8.txt \
   versions.alt/versions.orig/v9/result_instrumented/v9.txt optimize.instrumentations/

cd optimize.instrumentations

echo -e ""
python3 compare.files.py v0.txt v1.txt cmp.v0.v1.csv
python3 removing.duplicate.testcases.py cmp.v0.v1.csv cmp.v0.v1.optimized.csv
rm v1.txt cmp.v0.v1.csv

echo -e ""
python3 compare.files.py v0.txt v2.txt cmp.v0.v2.csv
python3 removing.duplicate.testcases.py cmp.v0.v2.csv cmp.v0.v2.optimized.csv
rm v2.txt cmp.v0.v2.csv

echo -e ""
python3 compare.files.py v0.txt v3.txt cmp.v0.v3.csv
python3 removing.duplicate.testcases.py cmp.v0.v3.csv cmp.v0.v3.optimized.csv
rm v3.txt cmp.v0.v3.csv

echo -e ""
python3 compare.files.py v0.txt v4.txt cmp.v0.v4.csv
python3 removing.duplicate.testcases.py cmp.v0.v4.csv cmp.v0.v4.optimized.csv
rm v4.txt cmp.v0.v4.csv

echo -e ""
python3 compare.files.py v0.txt v5.txt cmp.v0.v5.csv
python3 removing.duplicate.testcases.py cmp.v0.v5.csv cmp.v0.v5.optimized.csv
rm v5.txt cmp.v0.v5.csv

echo -e ""
python3 compare.files.py v0.txt v6.txt cmp.v0.v6.csv
python3 removing.duplicate.testcases.py cmp.v0.v6.csv cmp.v0.v6.optimized.csv
rm v6.txt cmp.v0.v6.csv

echo -e ""
python3 compare.files.py v0.txt v7.txt cmp.v0.v7.csv
python3 removing.duplicate.testcases.py cmp.v0.v7.csv cmp.v0.v7.optimized.csv
rm v7.txt cmp.v0.v7.csv

echo -e ""
python3 compare.files.py v0.txt v8.txt cmp.v0.v8.csv
python3 removing.duplicate.testcases.py cmp.v0.v8.csv cmp.v0.v8.optimized.csv
rm v8.txt cmp.v0.v8.csv

echo -e ""
python3 compare.files.py v0.txt v9.txt cmp.v0.v9.csv
python3 removing.duplicate.testcases.py cmp.v0.v9.csv cmp.v0.v9.optimized.csv
rm v0.txt v9.txt cmp.v0.v9.csv

echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


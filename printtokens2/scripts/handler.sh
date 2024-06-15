

cd $PWD
cd ..
ROOT=$PWD # set root of project
cd scripts

chmod +x runner.sh runner_instrumented.sh # give require access if not garunted
cp runner.sh runner_instrumented.sh ../source.alt/source.orig
cd ../source.alt/source.orig

echo -e ">>>>>>> running raw_code source.orig ..."
echo -e ""
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code source.orig ..."
./runner_instrumented.sh $ROOT     
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"



cd ../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v1
cd ../versions.alt/versions.orig/v1

echo -e ">>>>>>> running raw_code versions.orig/v1 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v1 ..."
./runner_instrumented.sh $ROOT  
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v2
cd ../versions.alt/versions.orig/v2

echo -e ">>>>>>> running raw_code versions.orig/v2 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v2 ..."
./runner_instrumented.sh $ROOT    
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v3
cd ../versions.alt/versions.orig/v3

echo -e ">>>>>>> running raw_code versions.orig/v3 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v3 ..."
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v4
cd ../versions.alt/versions.orig/v4

echo -e ">>>>>>> running raw_code versions.orig/v4 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v4 ..."
./runner_instrumented.sh $ROOT     
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v5
cd ../versions.alt/versions.orig/v5

echo -e ">>>>>>> running raw_code versions.orig/v5 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v5 ..."
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v6
cd ../versions.alt/versions.orig/v6

echo -e ">>>>>>> running raw_code versions.orig/v6 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v6 ..."
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v7
cd ../versions.alt/versions.orig/v7

echo -e ">>>>>>> running raw_code versions.orig/v7 ..."
./runner.sh $ROOT
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

echo -e ">>>>>>> running instrumented_code versions.orig/v7 ..."
./runner_instrumented.sh $ROOT    
rm runner.sh runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd ../../..
echo -e ">>>>>>> optimize instrumentation result of all executions"
cp source.alt/source.orig/result_instrumented/v0.txt \
   versions.alt/versions.orig/v1/result_instrumented/v1.txt \
   versions.alt/versions.orig/v2/result_instrumented/v2.txt \
   versions.alt/versions.orig/v3/result_instrumented/v3.txt \
   versions.alt/versions.orig/v4/result_instrumented/v4.txt \
   versions.alt/versions.orig/v5/result_instrumented/v5.txt \
   versions.alt/versions.orig/v6/result_instrumented/v6.txt \
   versions.alt/versions.orig/v7/result_instrumented/v7.txt optimize.instrumentations/

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
rm v0.txt v7.txt cmp.v0.v7.csv


echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


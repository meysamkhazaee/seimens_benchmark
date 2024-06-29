#mshadow: optimize duplicated file
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

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v10
cd $ROOT/versions.alt/versions.orig/v10

echo -e ">>>>>>> running instrumented_code versions.orig/v10 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v11
cd $ROOT/versions.alt/versions.orig/v11

echo -e ">>>>>>> running instrumented_code versions.orig/v11 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v12
cd $ROOT/versions.alt/versions.orig/v12

echo -e ">>>>>>> running instrumented_code versions.orig/v12 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v13
cd $ROOT/versions.alt/versions.orig/v13

echo -e ">>>>>>> running instrumented_code versions.orig/v13 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v14
cd $ROOT/versions.alt/versions.orig/v14

echo -e ">>>>>>> running instrumented_code versions.orig/v14 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v15
cd $ROOT/versions.alt/versions.orig/v15

echo -e ">>>>>>> running instrumented_code versions.orig/v15 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v16
cd $ROOT/versions.alt/versions.orig/v16

echo -e ">>>>>>> running instrumented_code versions.orig/v16 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v17
cd $ROOT/versions.alt/versions.orig/v17

echo -e ">>>>>>> running instrumented_code versions.orig/v17 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v18
cd $ROOT/versions.alt/versions.orig/v18

echo -e ">>>>>>> running instrumented_code versions.orig/v18 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v19
cd $ROOT/versions.alt/versions.orig/v19

echo -e ">>>>>>> running instrumented_code versions.orig/v19 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v20
cd $ROOT/versions.alt/versions.orig/v20

echo -e ">>>>>>> running instrumented_code versions.orig/v20 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v21
cd $ROOT/versions.alt/versions.orig/v21

echo -e ">>>>>>> running instrumented_code versions.orig/v21 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v22
cd $ROOT/versions.alt/versions.orig/v22

echo -e ">>>>>>> running instrumented_code versions.orig/v22 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v23
cd $ROOT/versions.alt/versions.orig/v23

echo -e ">>>>>>> running instrumented_code versions.orig/v23 ..."
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
   versions.alt/versions.orig/v9/result_instrumented/v9.txt \
   versions.alt/versions.orig/v10/result_instrumented/v10.txt \
   versions.alt/versions.orig/v11/result_instrumented/v11.txt \
   versions.alt/versions.orig/v12/result_instrumented/v12.txt \
   versions.alt/versions.orig/v13/result_instrumented/v13.txt \
   versions.alt/versions.orig/v14/result_instrumented/v14.txt \
   versions.alt/versions.orig/v15/result_instrumented/v15.txt \
   versions.alt/versions.orig/v16/result_instrumented/v16.txt \
   versions.alt/versions.orig/v17/result_instrumented/v17.txt \
   versions.alt/versions.orig/v18/result_instrumented/v18.txt \
   versions.alt/versions.orig/v19/result_instrumented/v19.txt \
   versions.alt/versions.orig/v20/result_instrumented/v20.txt \
   versions.alt/versions.orig/v21/result_instrumented/v21.txt \
   versions.alt/versions.orig/v22/result_instrumented/v22.txt \
   versions.alt/versions.orig/v23/result_instrumented/v23.txt optimize.instrumentations/

cd $ROOT/optimize.instrumentations

echo -e ""
python3 compare.files.py v0.txt v1.txt cmp.v0.v1.csv
python3 removing.duplicate.testcases.py cmp.v0.v1.csv cmp.v0.v1.totinfo.csv
rm v1.txt cmp.v0.v1.csv

echo -e ""
python3 compare.files.py v0.txt v2.txt cmp.v0.v2.csv
python3 removing.duplicate.testcases.py cmp.v0.v2.csv cmp.v0.v2.totinfo.csv
rm v2.txt cmp.v0.v2.csv

echo -e ""
python3 compare.files.py v0.txt v3.txt cmp.v0.v3.csv
python3 removing.duplicate.testcases.py cmp.v0.v3.csv cmp.v0.v3.totinfo.csv
rm v3.txt cmp.v0.v3.csv

echo -e ""
python3 compare.files.py v0.txt v4.txt cmp.v0.v4.csv
python3 removing.duplicate.testcases.py cmp.v0.v4.csv cmp.v0.v4.totinfo.csv
rm v4.txt cmp.v0.v4.csv

echo -e ""
python3 compare.files.py v0.txt v5.txt cmp.v0.v5.csv
python3 removing.duplicate.testcases.py cmp.v0.v5.csv cmp.v0.v5.totinfo.csv
rm v5.txt cmp.v0.v5.csv

echo -e ""
python3 compare.files.py v0.txt v6.txt cmp.v0.v6.csv
python3 removing.duplicate.testcases.py cmp.v0.v6.csv cmp.v0.v6.totinfo.csv
rm v6.txt cmp.v0.v6.csv

echo -e ""
python3 compare.files.py v0.txt v7.txt cmp.v0.v7.csv
python3 removing.duplicate.testcases.py cmp.v0.v7.csv cmp.v0.v7.totinfo.csv
rm v7.txt cmp.v0.v7.csv

echo -e ""
python3 compare.files.py v0.txt v8.txt cmp.v0.v8.csv
python3 removing.duplicate.testcases.py cmp.v0.v8.csv cmp.v0.v8.totinfo.csv
rm v8.txt cmp.v0.v8.csv

echo -e ""
python3 compare.files.py v0.txt v9.txt cmp.v0.v9.csv
python3 removing.duplicate.testcases.py cmp.v0.v9.csv cmp.v0.v9.totinfo.csv
rm v9.txt cmp.v0.v9.csv

echo -e ""
python3 compare.files.py v0.txt v10.txt cmp.v0.v10.csv
python3 removing.duplicate.testcases.py cmp.v0.v10.csv cmp.v0.v10.totinfo.csv
rm v10.txt cmp.v0.v10.csv

echo -e ""
python3 compare.files.py v0.txt v11.txt cmp.v0.v11.csv
python3 removing.duplicate.testcases.py cmp.v0.v11.csv cmp.v0.v11.totinfo.csv
rm v11.txt cmp.v0.v11.csv

echo -e ""
python3 compare.files.py v0.txt v12.txt cmp.v0.v12.csv
python3 removing.duplicate.testcases.py cmp.v0.v12.csv cmp.v0.v12.totinfo.csv
rm v12.txt cmp.v0.v12.csv

echo -e ""
python3 compare.files.py v0.txt v13.txt cmp.v0.v13.csv
python3 removing.duplicate.testcases.py cmp.v0.v13.csv cmp.v0.v13.totinfo.csv
rm v13.txt cmp.v0.v13.csv

echo -e ""
python3 compare.files.py v0.txt v14.txt cmp.v0.v14.csv
python3 removing.duplicate.testcases.py cmp.v0.v14.csv cmp.v0.v14.totinfo.csv
rm v14.txt cmp.v0.v14.csv

echo -e ""
python3 compare.files.py v0.txt v15.txt cmp.v0.v15.csv
python3 removing.duplicate.testcases.py cmp.v0.v15.csv cmp.v0.v15.totinfo.csv
rm v15.txt cmp.v0.v15.csv

echo -e ""
python3 compare.files.py v0.txt v16.txt cmp.v0.v16.csv
python3 removing.duplicate.testcases.py cmp.v0.v16.csv cmp.v0.v16.totinfo.csv
rm v16.txt cmp.v0.v16.csv

echo -e ""
python3 compare.files.py v0.txt v17.txt cmp.v0.v17.csv
python3 removing.duplicate.testcases.py cmp.v0.v17.csv cmp.v0.v17.totinfo.csv
rm v17.txt cmp.v0.v17.csv

echo -e ""
python3 compare.files.py v0.txt v18.txt cmp.v0.v18.csv
python3 removing.duplicate.testcases.py cmp.v0.v18.csv cmp.v0.v18.totinfo.csv
rm v18.txt cmp.v0.v18.csv

echo -e ""
python3 compare.files.py v0.txt v19.txt cmp.v0.v19.csv
python3 removing.duplicate.testcases.py cmp.v0.v19.csv cmp.v0.v19.totinfo.csv
rm v19.txt cmp.v0.v19.csv

echo -e ""
python3 compare.files.py v0.txt v20.txt cmp.v0.v20.csv
python3 removing.duplicate.testcases.py cmp.v0.v20.csv cmp.v0.v20.totinfo.csv
rm v20.txt cmp.v0.v20.csv

echo -e ""
python3 compare.files.py v0.txt v21.txt cmp.v0.v21.csv
python3 removing.duplicate.testcases.py cmp.v0.v21.csv cmp.v0.v21.totinfo.csv
rm v21.txt cmp.v0.v21.csv

echo -e ""
python3 compare.files.py v0.txt v22.txt cmp.v0.v22.csv
python3 removing.duplicate.testcases.py cmp.v0.v22.csv cmp.v0.v22.totinfo.csv
rm v22.txt cmp.v0.v22.csv

echo -e ""
python3 compare.files.py v0.txt v23.txt cmp.v0.v23.csv
python3 removing.duplicate.testcases.py cmp.v0.v23.csv cmp.v0.v23.totinfo.csv
rm v0.txt v23.txt cmp.v0.v23.csv

echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


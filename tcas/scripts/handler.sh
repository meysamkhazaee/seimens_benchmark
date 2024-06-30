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

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v24
cd $ROOT/versions.alt/versions.orig/v24

echo -e ">>>>>>> running instrumented_code versions.orig/v24 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v25
cd $ROOT/versions.alt/versions.orig/v25

echo -e ">>>>>>> running instrumented_code versions.orig/v25 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v26
cd $ROOT/versions.alt/versions.orig/v26

echo -e ">>>>>>> running instrumented_code versions.orig/v26 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v27
cd $ROOT/versions.alt/versions.orig/v27

echo -e ">>>>>>> running instrumented_code versions.orig/v27 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v28
cd $ROOT/versions.alt/versions.orig/v28

echo -e ">>>>>>> running instrumented_code versions.orig/v28 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v29
cd $ROOT/versions.alt/versions.orig/v29

echo -e ">>>>>>> running instrumented_code versions.orig/v29 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v30
cd $ROOT/versions.alt/versions.orig/v30

echo -e ">>>>>>> running instrumented_code versions.orig/v30 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v31
cd $ROOT/versions.alt/versions.orig/v31

echo -e ">>>>>>> running instrumented_code versions.orig/v31 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v32
cd $ROOT/versions.alt/versions.orig/v32

echo -e ">>>>>>> running instrumented_code versions.orig/v32 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v33
cd $ROOT/versions.alt/versions.orig/v33

echo -e ">>>>>>> running instrumented_code versions.orig/v33 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v34
cd $ROOT/versions.alt/versions.orig/v34

echo -e ">>>>>>> running instrumented_code versions.orig/v34 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v35
cd $ROOT/versions.alt/versions.orig/v35

echo -e ">>>>>>> running instrumented_code versions.orig/v35 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v36
cd $ROOT/versions.alt/versions.orig/v36

echo -e ">>>>>>> running instrumented_code versions.orig/v36 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v37
cd $ROOT/versions.alt/versions.orig/v37

echo -e ">>>>>>> running instrumented_code versions.orig/v37 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v38
cd $ROOT/versions.alt/versions.orig/v38

echo -e ">>>>>>> running instrumented_code versions.orig/v38 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v39
cd $ROOT/versions.alt/versions.orig/v39

echo -e ">>>>>>> running instrumented_code versions.orig/v39 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v40
cd $ROOT/versions.alt/versions.orig/v40

echo -e ">>>>>>> running instrumented_code versions.orig/v40 ..."
./runner_instrumented.sh $ROOT    
rm runner_instrumented.sh
echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"

cd $ROOT/scripts
cp runner_instrumented.sh $ROOT/versions.alt/versions.orig/v41
cd $ROOT/versions.alt/versions.orig/v41

echo -e ">>>>>>> running instrumented_code versions.orig/v41 ..."
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
   versions.alt/versions.orig/v23/result_instrumented/v23.txt \
   versions.alt/versions.orig/v24/result_instrumented/v24.txt \
   versions.alt/versions.orig/v25/result_instrumented/v25.txt \
   versions.alt/versions.orig/v26/result_instrumented/v26.txt \
   versions.alt/versions.orig/v27/result_instrumented/v27.txt \
   versions.alt/versions.orig/v28/result_instrumented/v28.txt \
   versions.alt/versions.orig/v29/result_instrumented/v29.txt \
   versions.alt/versions.orig/v30/result_instrumented/v30.txt \
   versions.alt/versions.orig/v31/result_instrumented/v31.txt \
   versions.alt/versions.orig/v32/result_instrumented/v32.txt \
   versions.alt/versions.orig/v33/result_instrumented/v33.txt \
   versions.alt/versions.orig/v34/result_instrumented/v34.txt \
   versions.alt/versions.orig/v35/result_instrumented/v35.txt \
   versions.alt/versions.orig/v36/result_instrumented/v36.txt \
   versions.alt/versions.orig/v37/result_instrumented/v37.txt \
   versions.alt/versions.orig/v38/result_instrumented/v38.txt \
   versions.alt/versions.orig/v39/result_instrumented/v39.txt \
   versions.alt/versions.orig/v40/result_instrumented/v40.txt \
   versions.alt/versions.orig/v41/result_instrumented/v41.txt optimize.instrumentations/

cd $ROOT/optimize.instrumentations

echo -e ""
python3 compare.files.py v0.txt v1.txt cmp.v0.v1.csv
python3 removing.duplicate.testcases.py cmp.v0.v1.csv cmp.v0.v1.tcas.csv
rm v1.txt cmp.v0.v1.csv

echo -e ""
python3 compare.files.py v0.txt v2.txt cmp.v0.v2.csv
python3 removing.duplicate.testcases.py cmp.v0.v2.csv cmp.v0.v2.tcas.csv
rm v2.txt cmp.v0.v2.csv

echo -e ""
python3 compare.files.py v0.txt v3.txt cmp.v0.v3.csv
python3 removing.duplicate.testcases.py cmp.v0.v3.csv cmp.v0.v3.tcas.csv
rm v3.txt cmp.v0.v3.csv

echo -e ""
python3 compare.files.py v0.txt v4.txt cmp.v0.v4.csv
python3 removing.duplicate.testcases.py cmp.v0.v4.csv cmp.v0.v4.tcas.csv
rm v4.txt cmp.v0.v4.csv

echo -e ""
python3 compare.files.py v0.txt v5.txt cmp.v0.v5.csv
python3 removing.duplicate.testcases.py cmp.v0.v5.csv cmp.v0.v5.tcas.csv
rm v5.txt cmp.v0.v5.csv

echo -e ""
python3 compare.files.py v0.txt v6.txt cmp.v0.v6.csv
python3 removing.duplicate.testcases.py cmp.v0.v6.csv cmp.v0.v6.tcas.csv
rm v6.txt cmp.v0.v6.csv

echo -e ""
python3 compare.files.py v0.txt v7.txt cmp.v0.v7.csv
python3 removing.duplicate.testcases.py cmp.v0.v7.csv cmp.v0.v7.tcas.csv
rm v7.txt cmp.v0.v7.csv

echo -e ""
python3 compare.files.py v0.txt v8.txt cmp.v0.v8.csv
python3 removing.duplicate.testcases.py cmp.v0.v8.csv cmp.v0.v8.tcas.csv
rm v8.txt cmp.v0.v8.csv

echo -e ""
python3 compare.files.py v0.txt v9.txt cmp.v0.v9.csv
python3 removing.duplicate.testcases.py cmp.v0.v9.csv cmp.v0.v9.tcas.csv
rm v9.txt cmp.v0.v9.csv

echo -e ""
python3 compare.files.py v0.txt v10.txt cmp.v0.v10.csv
python3 removing.duplicate.testcases.py cmp.v0.v10.csv cmp.v0.v10.tcas.csv
rm v10.txt cmp.v0.v10.csv

echo -e ""
python3 compare.files.py v0.txt v11.txt cmp.v0.v11.csv
python3 removing.duplicate.testcases.py cmp.v0.v11.csv cmp.v0.v11.tcas.csv
rm v11.txt cmp.v0.v11.csv

echo -e ""
python3 compare.files.py v0.txt v12.txt cmp.v0.v12.csv
python3 removing.duplicate.testcases.py cmp.v0.v12.csv cmp.v0.v12.tcas.csv
rm v12.txt cmp.v0.v12.csv

echo -e ""
python3 compare.files.py v0.txt v13.txt cmp.v0.v13.csv
python3 removing.duplicate.testcases.py cmp.v0.v13.csv cmp.v0.v13.tcas.csv
rm v13.txt cmp.v0.v13.csv

echo -e ""
python3 compare.files.py v0.txt v14.txt cmp.v0.v14.csv
python3 removing.duplicate.testcases.py cmp.v0.v14.csv cmp.v0.v14.tcas.csv
rm v14.txt cmp.v0.v14.csv

echo -e ""
python3 compare.files.py v0.txt v15.txt cmp.v0.v15.csv
python3 removing.duplicate.testcases.py cmp.v0.v15.csv cmp.v0.v15.tcas.csv
rm v15.txt cmp.v0.v15.csv

echo -e ""
python3 compare.files.py v0.txt v16.txt cmp.v0.v16.csv
python3 removing.duplicate.testcases.py cmp.v0.v16.csv cmp.v0.v16.tcas.csv
rm v16.txt cmp.v0.v16.csv

echo -e ""
python3 compare.files.py v0.txt v17.txt cmp.v0.v17.csv
python3 removing.duplicate.testcases.py cmp.v0.v17.csv cmp.v0.v17.tcas.csv
rm v17.txt cmp.v0.v17.csv

echo -e ""
python3 compare.files.py v0.txt v18.txt cmp.v0.v18.csv
python3 removing.duplicate.testcases.py cmp.v0.v18.csv cmp.v0.v18.tcas.csv
rm v18.txt cmp.v0.v18.csv

echo -e ""
python3 compare.files.py v0.txt v19.txt cmp.v0.v19.csv
python3 removing.duplicate.testcases.py cmp.v0.v19.csv cmp.v0.v19.tcas.csv
rm v19.txt cmp.v0.v19.csv

echo -e ""
python3 compare.files.py v0.txt v20.txt cmp.v0.v20.csv
python3 removing.duplicate.testcases.py cmp.v0.v20.csv cmp.v0.v20.tcas.csv
rm v20.txt cmp.v0.v20.csv

echo -e ""
python3 compare.files.py v0.txt v21.txt cmp.v0.v21.csv
python3 removing.duplicate.testcases.py cmp.v0.v21.csv cmp.v0.v21.tcas.csv
rm v21.txt cmp.v0.v21.csv

echo -e ""
python3 compare.files.py v0.txt v22.txt cmp.v0.v22.csv
python3 removing.duplicate.testcases.py cmp.v0.v22.csv cmp.v0.v22.tcas.csv
rm v22.txt cmp.v0.v22.csv

echo -e ""
python3 compare.files.py v0.txt v23.txt cmp.v0.v23.csv
python3 removing.duplicate.testcases.py cmp.v0.v23.csv cmp.v0.v23.tcas.csv
rm v23.txt cmp.v0.v23.csv

echo -e ""
python3 compare.files.py v0.txt v24.txt cmp.v0.v24.csv
python3 removing.duplicate.testcases.py cmp.v0.v24.csv cmp.v0.v24.tcas.csv
rm v24.txt cmp.v0.v24.csv

echo -e ""
python3 compare.files.py v0.txt v25.txt cmp.v0.v25.csv
python3 removing.duplicate.testcases.py cmp.v0.v25.csv cmp.v0.v25.tcas.csv
rm v25.txt cmp.v0.v25.csv

echo -e ""
python3 compare.files.py v0.txt v26.txt cmp.v0.v26.csv
python3 removing.duplicate.testcases.py cmp.v0.v26.csv cmp.v0.v26.tcas.csv
rm v26.txt cmp.v0.v26.csv

echo -e ""
python3 compare.files.py v0.txt v27.txt cmp.v0.v27.csv
python3 removing.duplicate.testcases.py cmp.v0.v27.csv cmp.v0.v27.tcas.csv
rm v27.txt cmp.v0.v27.csv

echo -e ""
python3 compare.files.py v0.txt v28.txt cmp.v0.v28.csv
python3 removing.duplicate.testcases.py cmp.v0.v28.csv cmp.v0.v28.tcas.csv
rm v28.txt cmp.v0.v28.csv

echo -e ""
python3 compare.files.py v0.txt v29.txt cmp.v0.v29.csv
python3 removing.duplicate.testcases.py cmp.v0.v29.csv cmp.v0.v29.tcas.csv
rm v29.txt cmp.v0.v29.csv

echo -e ""
python3 compare.files.py v0.txt v30.txt cmp.v0.v30.csv
python3 removing.duplicate.testcases.py cmp.v0.v30.csv cmp.v0.v30.tcas.csv
rm v30.txt cmp.v0.v30.csv

echo -e ""
python3 compare.files.py v0.txt v31.txt cmp.v0.v31.csv
python3 removing.duplicate.testcases.py cmp.v0.v31.csv cmp.v0.v31.tcas.csv
rm v31.txt cmp.v0.v31.csv

echo -e ""
python3 compare.files.py v0.txt v32.txt cmp.v0.v32.csv
python3 removing.duplicate.testcases.py cmp.v0.v32.csv cmp.v0.v32.tcas.csv
rm v32.txt cmp.v0.v32.csv

echo -e ""
python3 compare.files.py v0.txt v33.txt cmp.v0.v33.csv
python3 removing.duplicate.testcases.py cmp.v0.v33.csv cmp.v0.v33.tcas.csv
rm v33.txt cmp.v0.v33.csv

echo -e ""
python3 compare.files.py v0.txt v34.txt cmp.v0.v34.csv
python3 removing.duplicate.testcases.py cmp.v0.v34.csv cmp.v0.v34.tcas.csv
rm v34.txt cmp.v0.v34.csv

echo -e ""
python3 compare.files.py v0.txt v35.txt cmp.v0.v35.csv
python3 removing.duplicate.testcases.py cmp.v0.v35.csv cmp.v0.v35.tcas.csv
rm v35.txt cmp.v0.v35.csv

echo -e ""
python3 compare.files.py v0.txt v36.txt cmp.v0.v36.csv
python3 removing.duplicate.testcases.py cmp.v0.v36.csv cmp.v0.v36.tcas.csv
rm v36.txt cmp.v0.v36.csv

echo -e ""
python3 compare.files.py v0.txt v37.txt cmp.v0.v37.csv
python3 removing.duplicate.testcases.py cmp.v0.v37.csv cmp.v0.v37.tcas.csv
rm v37.txt cmp.v0.v37.csv

echo -e ""
python3 compare.files.py v0.txt v38.txt cmp.v0.v38.csv
python3 removing.duplicate.testcases.py cmp.v0.v38.csv cmp.v0.v38.tcas.csv
rm v38.txt cmp.v0.v38.csv

echo -e ""
python3 compare.files.py v0.txt v39.txt cmp.v0.v39.csv
python3 removing.duplicate.testcases.py cmp.v0.v39.csv cmp.v0.v39.tcas.csv
rm v39.txt cmp.v0.v39.csv

echo -e ""
python3 compare.files.py v0.txt v40.txt cmp.v0.v40.csv
python3 removing.duplicate.testcases.py cmp.v0.v40.csv cmp.v0.v40.tcas.csv
rm v40.txt cmp.v0.v40.csv

echo -e ""
python3 compare.files.py v0.txt v41.txt cmp.v0.v41.csv
python3 removing.duplicate.testcases.py cmp.v0.v41.csv cmp.v0.v41.tcas.csv
rm v0.txt v41.txt cmp.v0.v41.csv

echo -e ""
echo -e ">>>>>>> complete."
echo -e ""
echo -e "----------------------"


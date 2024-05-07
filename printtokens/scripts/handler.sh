# Change to the current directory

cd $PWD
cd ..
ROOT=$PWD
cd scripts

chmod +x runner.sh runner_instrumented.sh
cp runner.sh runner_instrumented.sh ../source.alt/source.orig
cd ../source.alt/source.orig
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code source.orig"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code source.orig"
./runner_instrumented.sh $ROOT     
rm runner.sh runner_instrumented.sh



cd ../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v1
cd ../versions.alt/versions.orig/v1
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v1"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v1"
./runner_instrumented.sh $ROOT  
rm runner.sh runner_instrumented.sh



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v2
cd ../versions.alt/versions.orig/v2
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v2"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v2"
./runner_instrumented.sh $ROOT    
rm runner.sh runner_instrumented.sh


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v3
cd ../versions.alt/versions.orig/v3
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v3"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v3"
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v4
cd ../versions.alt/versions.orig/v4
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v4"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v4"
./runner_instrumented.sh $ROOT     
rm runner.sh runner_instrumented.sh


cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v5
cd ../versions.alt/versions.orig/v5
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v4"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v4"
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v6
cd ../versions.alt/versions.orig/v6
echo ">>>>>>> run raw_code versions.orig/v6"
echo -e ""
echo -e "----------------------"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v6"
./runner_instrumented.sh $ROOT   
rm runner.sh runner_instrumented.sh



cd ../../..
cd scripts
cp runner.sh runner_instrumented.sh ../versions.alt/versions.orig/v7
cd ../versions.alt/versions.orig/v7
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run raw_code versions.orig/v7"
./runner.sh $ROOT
echo -e ""
echo -e "----------------------"
echo ">>>>>>> run instrumented_code versions.orig/v7"
./runner_instrumented.sh $ROOT    
rm runner.sh runner_instrumented.sh
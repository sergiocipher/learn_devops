mkdir link 
cd link 

echo "hello I am sergiocipher" > original.txt 

ln original.txt hard.txt  # Hard link 
ln -s original.txt soft.txt # Soft Link 

ls -l 

rm original.txt 
cat hard.txt 
cat soft.txt 

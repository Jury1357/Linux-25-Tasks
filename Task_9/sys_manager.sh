choice2=0
while [[ choice2 -ne 7 ]]
do
echo "========== Linux System Manager =========="
echo " 1. Show System Information" 
echo " 2. Check File Permissions"
echo " 3. Change File Permissions"
echo " 4. Compress a File/Directory"
echo " 5. Decompress a File"
echo " 6. Exit"
echo "=========================================="
echo "Enter your choice:"
read choice
case $choice in
 1 ) echo "Current User: Jury";;
 2 ) echo "Enter file name: "
     read file
     echo "Permissions for $file:" 
     ls -al $file;;
  3 ) echo "Enter the filename"
     read file
     echo "Enter new permission" 
     read pernum
     chmod $pernum $file
     echo "Permissions changed successfully.";;
 4 ) echo "Enter the file/directory name"
    read myfile
    echo "Choose compression type:\n1. tar.gz\n2. zip" 
    read ans
  if [[ $ans -eq 1 ]]
   then
    tar -cf mytar2 $myfile
    gzip mytar2
    
  elif [[ $ans -eq 2 ]]
   then
   zip -r mylol $myfile
   
  else
   echo "sth wrong with your file"
  fi

  if [[ $ans -eq 1 || $ans -eq 2 ]]
   then
    echo "Compressing..."
    sleep 1  
    echo "Compressed successful."
  fi ;;
     
 5 ) echo "Enter the compressed file name:"
   read myfile
  if [[ $myfile == *.gz ]]
   then
    echo "$myfile before gunzip" 
    gunzip $myfile
    echo "$myfile after gunzip"
    tar -xf mytar2 
  elif [[ $myfile == *.zip ]]
   then 
   echo "before unzip"  
   unzip $myfile
  fi 
   echo "Extracting..."
   sleep 1   
   echo "Decompression successful." ;;
 6 ) 
echo "Exiting the system manager. Goodbye!"
choice2=7;;

*)
echo "invalid" ;;
esac
done


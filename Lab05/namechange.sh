#!/bin/bash
echo "Creating Files with errors"
for i in {1..3}
do
		echo $i
			touch "$i file name.txt"
				touch "$i-pic.jgp"
					touch "$i-foo.txt"
				done			
				
printHelp() {
       echo "Usage: namechange -f find -r replace: string to modify"
       echo " -f The text to find in the filename"
       echo " -r The replacement text for the new filename"	
}

 while getopts ":hf:r:" opt; do


	case $opt in

	h)   echo "Printing Help Guide"  
		printHelp
		;;

	f)   find $OPTARG
		;;

	r)   sed 
		;;
	\?) 
	     echo "Invalid option"
	     echo "Here is a help guide:"
	     printHelp
	     ;;
       esac
     done
		

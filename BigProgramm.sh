#!/bin/bash
while true
do
echo "What do you want?"
echo "1. Create a bash script file"
echo "2. Creat a normal file"
echo "3. Create a new directory"
echo "4. Exit"

read INPUT 
case $INPUT in 
	1)echo "How many files do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "please give me a name for the new file: "
			read name
			touch $name
			chmod +x $name
			echo "#!/bin/bash" > $name
			echo "$name is created :)"
			count=$(($count-1))
		done;;
	2)echo "How many files do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "Please give me a name for the new file: "
			read name
			touch $name
			echo "$name is created :)"
			count=$(($count-1))
		done;;
	3)echo "How many directories do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "Please give me a name for the directory: "
			read name 
			mkdir $name
			chmod +x $name 
			echo "$name is created :)"
			count=$(($count-1))
		done;;
	4)echo "Bye"
		exit 1;;
	*)echo "Invalid entry , please enter a number between 1 and 4: "
		read INPUT;;

esac
done

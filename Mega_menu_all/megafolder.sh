
#!/bin/bash 
      
my_num(){
    read -p "Please enter first number: " num1
    read -p "Please enter second number: " num2
}
my_num
      
#For every number between the first argument and the last 
     
for ((i = $num1; i <= $num2; i++)) 
      
do 
      
    #Create a new folder for that number 
      
    echo "Creating directory number $i" 
      
    mkdir "week $i" 
      
done 
     
# Script for Palindrome

# Description: Get the Input from the User and check the given input is Palindrome or not Palindrome.

# params: input
$input = (Read-Host "Enter the Input")

# Declaring empty variable to store the reversed input  
$reversed_input = ""

# Converting the input into character array
$input_arr = $input.ToCharArray()

foreach($i in $input_arr){
  $reversed_input = $i + $reversed_input
}

if($input -eq $reversed_input){
  Write-Host "$input is Palindrome"
} else {
  Write-Host "$input is not a Palindrome"
}
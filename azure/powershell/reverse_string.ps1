# Script for Reverse a String

# Description: Get the String from the User and reverse that string using ForEach Loop.

# params: input_str: String
[string]$input_str = Read-Host "Enter the string"

# Declaring empty string to store the reversed string  
$reversed_str = ""

# Converting the string to character array
$str_list = $input_str.ToCharArray()

foreach($str in $str_list){
  $reversed_str = $str + $reversed_str
}

Write-Host "The reverse string of $input_str is: $reversed_str"
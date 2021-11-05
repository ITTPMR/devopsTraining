# Script for Reverse a String

# Description: Get the String from the User and reverse that string using ForEach Loop.

# params: input_val: String

function ReverseString {
  param([string]$input_val)
  process {
    $reversed_str = "" # Declaring empty string to store the reversed string
    $str_list = $input_val.ToCharArray() # Converting the string to character array

    foreach($str in $str_list){
      $reversed_str = $str + $reversed_str
    }
    return "The reverse string of $input_val is: $reversed_str"
  }
}

# If you want to run the script Please Copy => ReverseString -input_val user_input
# Example:ReverseString -input_val powershell
# Script for Palindrome

# Description: Get the Input from the User and check the given input is Palindrome or not Palindrome.

# params: input_val: String

function CheckPalindrome {
  param([string] $input_val)
  process {
    $input_val_lc = $input_val.ToLower()
    $reversed_input = ""  # Declaring empty variable to store the reversed input
    $input_arr = $input_val_lc.ToCharArray() # Converting the string into character array

    foreach($i in $input_arr){
      $reversed_input = $i + $reversed_input
    }

    if($input_val -eq $reversed_input){
      return "$input_val is Palindrome"
    } else {
      return "$input_val is not a Palindrome"
    }
  }
}

# Function Call
#  CheckPalindrome madam

# If you want to run the script Please Copy and paste into powershell terminal => CheckPalindrome -input_val user_input
# Example: CheckPalindrome -input_val madam
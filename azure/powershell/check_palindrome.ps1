# Script for Palindrome

# Description: Get the Input from the User and check the given input is Palindrome or not Palindrome.

# params: input_val: String

function CheckPalindrome {
  param([string] $input_val)
  process {
    $input_val_lc = $input_val.ToLower()
    $counts = ($input_val).length - 1  # Total character count of input_val. Index starts from zero that's why minus 1 from total count.
    $reversed_input = ""  # Declaring empty variable to store the reversed input.

    for($i=$counts; $i -ge 0; $i--){
      $reversed_input = $reversed_input + $input_val[$i]
    }

    if($input_val -eq $reversed_input){
      return "$input_val is Palindrome"
    } else {
      return "$input_val is not a Palindrome"
    }
  }
}

# Function Call
# CheckPalindrome("madam")

# If you want to run the script Please Copy and paste into powershell terminal => CheckPalindrome -input_val user_input
# Example: CheckPalindrome -input_val madam
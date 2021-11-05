# Script for Reverse a String

# Description: Get the String from the User and reverse that string using ForEach Loop.

# params: input_val: String

function ReverseString {
  param([string]$input_val)
  process {
    $counts = ($input_val).length - 1  # Total length of input_val. Index starts from zero that's why minus 1 from total count.
    $reversed_str = "" # Declaring empty string to store the reversed string

    for($i=$counts; $i -ge 0; $i--){
      $reversed_str = $reversed_str + $input_val[$i]
    }
    return "The reverse string of $input_val is: $reversed_str"
  }
}


# Use to Function Call, Please Uncomment the below line and pass the arguement.
# ReverseString("Is the String is Reverse")

# If you want to run the script Please Copy => ReverseString -input_val user_input
# Example:ReverseString -input_val powershell
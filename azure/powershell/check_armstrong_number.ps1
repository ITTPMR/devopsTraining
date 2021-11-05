﻿# Script for Armstrong Number

# Description: Get the Number from the User and check that input number is Armstrong number or not.

# params: input_val: Integer

function checkArmstrongNumber{
  param([int]$input_val)
  process {
    # Declaring Variables
    $temp =$input_val # The input value is stored in a temporary variable
    $order = ($input_val).tostring().length # Length of input number
    $sum=0 # Total Value
    $r=0 # Reminder
    $n=0 # Quotient

    Do{
      $r = $temp % 10
      $r = [Math]::Floor($r) # Floor the Reminder value
      $n = [Math]::Pow($r, $order)
      $temp = $temp / 10
      $sum = $sum + $n
    }while( $temp -gt 0)

    if($sum -eq $input_val){
      return "$input_val is an Armstrong Number."
    }
    else{
      return "$input_val is not an Armstrong Number."
    }
  }
}

# Function Call
# checkArmstrongNumber 253

# If you want to run the script Please Copy and paste into powershell terminal => checkArmstrongNumber -input_val user_input
# Example: checkArmstrongNumber -input_val 153
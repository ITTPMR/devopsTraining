﻿# Script for Armstrong Number

# Description: Get the Number from the User and check that input number is Armstrong number or not.

# params: input_val: Integer
$input_val = (Read-Host "Enter the Number to check Armstrong")

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
  Write-Host "$input_val is an Armstrong Number."
}
else{
  Write-Host "$input_val is not an Armstrong Number."
}

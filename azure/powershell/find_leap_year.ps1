# Script for Find the Leap Year

# Description: Get the Year from the User and check that year is Leap Year or not.

# params: year: Integer
$year = Read-Host "Enter year in 4 digit format"

# Method-1: Find the Leap Year based on February month
$leap = [datetime]::DaysInMonth($year, 2)
if($leap -eq 29){Write-Host "$year is a Leap year"} else {Write-Host "$year is not a Leap year"}

# Method-2: Find the Leap Year by using modulo operator
if($year % 4 -eq 0){
  if ($year % 100 -eq 0){
    if($year % 400 -eq 0){
      Write-Host "$year is a Leap year"
    }
    else {
      Write-Host "$year is not a Leap year"
    }
  } else {
    Write-Host "$year is a Leap year"
  }
} else {
  Write-Host "$year is not a Leap year"
}
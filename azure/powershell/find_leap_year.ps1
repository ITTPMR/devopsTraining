# Script for Find the Leap Year

# Description: Get the Year from the User and check that year is Leap Year or not.

# params: year: Integer

#Approach1: Find the Leap Year based on month February days count
function FindLeapYearByMonth{
  param([int]$year)
  process{
    $leap = [datetime]::DaysInMonth($year, 2)
    if($leap -eq 29){return "$year is a Leap year"} else {return "$year is not a Leap year"}
  }
}

#Approach2: Find the Leap Year using Logical Method
function FindLeapYear{
  param([int]$year)
  process{
    if($year % 4 -eq 0){
      if ($year % 100 -eq 0){
        if($year % 400 -eq 0){
          return "$year is a Leap year"
        }
        else {
          return "$year is not a Leap year"
        }
      } else {
        return "$year is a Leap year"
      }
    } else {
      return "$year is not a Leap year"
    }
  }
}

# Use to Function Call, Please Uncomment the below line and pass the arguement.
# FindLeapYear(2000)

# If you want to run the script Please Copy and paste into powershell terminal => FindLeapYear -year user_input
# Example: FindLeapYear -year 2003
# Example: FindLeapyearByMonth -year 2004
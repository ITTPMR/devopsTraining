class BasicProgram {
  [string] ReverseString(){
    [string] $input_val = (Read-Host "Enter the Input to Reverse a String") # Run Time Input
    $counts = ($input_val).length - 1  # Total length of input_val. Index starts from zero that's why minus 1 from total count.
    $reversed_str = "" # Declaring empty string to store the reversed string
    for($i=$counts; $i -ge 0; $i--){
      $reversed_str = $reversed_str + $input_val[$i]
    }
    return "The reverse string of $input_val is: $reversed_str"
  }

  [string] CheckPalindrome(){
    $input_val = (Read-Host "Enter the Input to check Palindrome or Not palindrome") # Run Time Input
    $input_val_lc = $input_val.ToLower()
    $counts = ($input_val).length - 1  # Total length of input_val. Index starts from zero that's why minus 1 from total count.
    $reversed_input = ""  # Declaring empty variable to store the reversed input.

    for($i=$counts; $i -ge 0; $i--){
      $reversed_input = $reversed_input + $input_val[$i]
    }

    if($($input_val) -eq $reversed_input){
      return "$($input_val) is Palindrome"
    } else {
      return "$($input_val) is not a Palindrome"
    }
  }
  
  [hashtable] CountCharInString() {
    [string] $input_val = (Read-Host "Enter the Input to count occurrence of character in a String").ToLower() # Run Time Input
    $input_str_list = $input_val.toCharArray() # Converting the input string into character array
    $count = 1
    $dict = @{}
      foreach($key in $input_str_list) {    
        if($key -in $dict.keys) {
        $dict[$key] = $dict.$key += $count;
      }
      else{
        $dict.add($key, $count)
      }
    }
    return $dict
  }

  [string] CheckArmstongNumber() {
    # Declaring Variables
    [int] $input_val = (Read-Host "Enter the Input to check Armstrong or Not Armstrong") # Run Time Input
    $temp =$input_val # The input value is stored in a temporary variable
    $order = ($input_val).tostring().length # Length of input number
    $sum=0 # Total Value
    $r=0 # Reminder
    $n=0

    Do{
      $r = $temp % 10
      $r = [Math]::Floor($r) # Floor the Reminder value
      $n = [Math]::Pow($r, $order)
      $temp = $temp / 10
      $sum = $sum + $n
    }while( $temp -gt 0)

    # Check input_val is equal to sum
    if($sum -eq $input_val){
      return "$input_val is an Armstrong Number."
    }
    else{
      return "$input_val is not an Armstrong Number."
    }
  }

  [string] FindLeapYearByMonthBase() {
    $year = Read-Host "Enter year in 4 digit format (By Month based)"
    $leap = [datetime]::DaysInMonth($year, 2)
    if($leap -eq 29){return "$year is a Leap year"} else {return "$year is not a Leap year"}
  }

  [string] FindLeapYear() {
    $year = Read-Host "Enter year in 4 digit format"
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

# Function Call
$program = [BasicProgram]::new()

$program.ReverseString()
$program.CountCharInString()
$program.CheckPalindrome()
$program.CheckArmstongNumber()
$program.FindLeapYear()
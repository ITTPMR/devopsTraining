# Script for count the number of charaters occurence in a given string

# params input_str: String
$input_str = (Read-Host "Enter the string").ToLower()

# Converting the input string into character array
$input_str_list = $input_str.toCharArray()

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

echo($dict)
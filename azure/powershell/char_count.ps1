# Reverse a String

$input_str = Read-Host "Enter the string"
$input_str_list = $input_str.toCharArray()
$count = 1
$dict = @{}
foreach($str in $input_str_list) {
   echo("$dict.$str")
   if($dict[$str] -eq $str) {
     echo("abc")
     # $dict[$str] = $(int)dict[str] + 1;
   }
   else{
      echo("def")
      $dict.add( $str, 1 )
     # $dict.Add($str,$count)
   }
}
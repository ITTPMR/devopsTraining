# Print the Factorial Number

$input = 5
$fact = 1

for($i=$input; $i -ge 1; $i--){
  $fact = $fact * $i;
}

echo $fact

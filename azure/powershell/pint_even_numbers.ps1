# Print the even number script

for($i=1; $i -le 10; $i++){
  $remainder = $i % 2
  if($remainder -eq 0) {
      echo $i
  }
}
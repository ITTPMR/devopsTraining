 
$input_val = Read-Host "Enter the Number to check Armstrong"

$temp =$input_val
$sum=0
$r=0
$n=0


Do{
  $r = $temp % 10
  $sum = $sum + ($r * $r * $r)
  $temp = $temp / 10
  echo([System.Math]::Round($temp))
  echo($temp)
}while( $temp -gt 0)

if($sum -eq $temp){
  echo "It is an Armstrong Number."
}
else{
  echo "It is not an Armstrong Number."
}

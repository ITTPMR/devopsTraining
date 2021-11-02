# Reverse a String

$input_str = Read-Host "Enter the string"

#$temp = $input_str.ToCharArray()
$out = $input_str.ToCharArray()

[array]::reverse($out)

$reversed_string = -join($out)

echo($reversed_string)


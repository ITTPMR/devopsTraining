# Check the word is Palindrome

$input_str = (Read-Host "Enter the string").ToLower()

$out = $input_str.ToCharArray()

[array]::Reverse($out)

$reversed_str = -join($out)

"$input_str equals $reversed_str`:`r`n—–---"
$input_str -eq $reversed_str
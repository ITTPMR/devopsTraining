$num = Read-Host "Input a number"

$isPrime = $true
for ($y = 2 ; $y -lt $num ; $y++ )
{
    if (($num / $y) -is [int]) {
        Write-Host "$num is not a prime number"
        $isPrime = $false
        break
    }
}

if ($isPrime -eq $true) {
    Write-Host "$num is a prime number"
}
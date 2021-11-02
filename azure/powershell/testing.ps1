#!/bin/sh
$number = 121
echo $number | rev


if($number -eq  $rev){
   echo "the $number is a palindrome"
}
else{
   echo "the $number is not a palindrome"
}
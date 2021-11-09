# Script for count the number of charaters occurence in a given string

# params input_val: String

function CountCharOccurInString{
   param([string]$input_val)
   process {
     $input_val = $input_val.ToLower()
     $input_str_list = $input_val.toCharArray()  # Converting the input string into character array
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
  }
}


# Use to Function Call, Please Uncomment the below line and pass the arguement.
# CountCharOccurInString("Madagascar")

# If you want to run the script Please Copy and paste into powershell terminal => CountCharOccurInString -input_val user_input
# Example: CountCharOccurInString -input_val 153
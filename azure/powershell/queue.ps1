
#>


class Stack{
  [System.Collections.ArrayList]$items
  Stack($i){
    $this.items = $i
  }
  [string] push($input_val) {
    $this.items += $input_val  
    return "Added $input_val"
  }

  [string] Pop() {
    $count = ($this.items.count - 1)
    $val = $this.items[$count]
    $this.items.Remove($val)
    return "Removed $val"
  }

  [System.Collections.ArrayList] GetList() { 
    return $this.items
  }
}

$items =  @()

# Function Call
$stack = [Stack]::new($items)

$stack.push(10)
$stack.push(20)
$stack.push(30)
$stack.pop()
$stack.GetList()
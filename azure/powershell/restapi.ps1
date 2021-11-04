$uri = "https://www.google.com"
$response = Invoke-RestMethod -Uri $uri
$response.title
$response.count
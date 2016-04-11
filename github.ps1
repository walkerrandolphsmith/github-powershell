$username = '<your-username>'
$personalAccessToken = '<your-personal-access-token>'

$Token = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($username + ':' + $personalAccessToken))

$Headers = @{
    'Authorization' = "Basic {0}" -f $Token 
}

$Body = @{
    name = 'Walker Randolph Smith'
    } | ConvertTo-Json

Invoke-RestMethod -Method Patch -Uri 'https://api.github.com/user' -Headers $Headers -Body $Body
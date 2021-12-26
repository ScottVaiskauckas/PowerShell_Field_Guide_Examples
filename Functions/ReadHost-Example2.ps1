$Password = Read-Host -prompt `
"Set password for built in administrator" -AsSecureString
Set-LocalUser -Name Administrator -Password $Password
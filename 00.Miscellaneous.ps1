<#
Some common commands
Recommended to run in PowerShell directly, rather than on VS code, which is my IDE
#>
Get-Date   #Gets the system date
Get-Host   #Gets the details of the host programme
Get-Command   #List of all Commands

help Get-Date               # Get help details on the cmdlet Get-Help 
help Get-Date -Online       # Open the online help page on the browser

$PSVersionTable  #Gets the version details of PowerShell

# Cmdlets
# created specifically for PowerShell
# Usually a verb - noun. e.g., Get-Service
Write-Host "Hello"  # Prints Hello on screen
# There are 100s of cmdlets
# Custom cmdlets can be created.

# alias can be set up for cmdlets
# both the below commands have the same elias
Get-Alias dir
Get-Alias ls
        # ls and dir invoke the same underlying cmdlet

Set-Alias HostDetails Get-Host  # sets alias for the cmdlet HostDetails
        # we can set alias for aliases

Remove-Item Alias:\HostDetails      # removes the alias given









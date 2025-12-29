# Basics of PowerShell
# Run each lines in a seperate PowerShell window to get results of each line

<#
Teaser - to identify the processes taking most of the CPU
#>
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

#Breaking it down
Get-Process # List all the processes
#  | allows the output of one cmdlet to be used as an input for another



<# Step 1
We will start with defining variables
#>

#Simple Aritemetic
2*3 #Prints 6

#assigning value to a variable
$x = 2*3  
$x   #prints the variable

# Details of the variable x  and the available methods
$x | Get-Member

# Updating the value in an existing varibale
$x += 3
$x = "Sample String"
$x | Get-Member

# Some basic string manipulations
$x.ToUpper()
$x.Substring(0,2)

$y = "This is a $x"  
#While strings can be defined inside single quotes, when we do it, the variable names inside the single quotes will be taken literally, and not as their values

$y

$z = "Testing $y"
$z


<# Step 2
Basic Comparisons
#>
$x = 10
$y = 10
$z = 100

$x -eq $y       # returns True
$x -eq $z       # returns False
100 -eq 1000    # returns False

$x -ne $z       # returns True as x <> z

12 -gt 13       # False
12 -lt 12       # True

# We can do string comparisons
"12" -lt "Strings"          # True
"string" -eq "STRING"       # True as case is ignored
"string" -ceq "STRING"      # False as they are not case equivalents

#wildcards
"Strings" -eq "St*"             # False
"Strings" -like "St*"           # True (wildcards)
"Strings" -like "StR*"          # True
"Strings" -like "*R*"           # True
"Strings" -like "??ring?"       # True, ? represents a single character 
"Strings" -like "???in*"        # True

#Matching
"This is a test string" -match " TeSt s"        # True
"This is a test string" -cmatch "TEST"          # False, as the match is done with case in account










 


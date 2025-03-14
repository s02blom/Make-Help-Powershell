# Version one
Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { Write-Host ('{0,-20} {1}' -f ($_ -split '(:)')[1], ($_ -split ':.*?## ')[0]) -ForegroundColor Cyan }
# Displayed the following
#:      hello
#:      help
#:      world


Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { 
    Write-Host ('{0,-10} {1}' -f    # Decides where what objecs is located, the second number is the whitespace
                ($_ -split '(:)')[1], 
                ($_ -split ':.*?## ')[0]) 
                -ForegroundColor Cyan 
    }

# Version two
Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { Write-Host ('{0,-20} {1}' -f ($_ -split '(:)')[0], ($_ -split ':.*?## ')[1]) -ForegroundColor Cyan }
# Displayed the following
# hello      Displays world
# help       Show this help
# world      Runs hello
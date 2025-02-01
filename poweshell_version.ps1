# Version one
Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { Write-Host ('{0,-20} {1}' -f ($_ -split '(:)')[1], ($_ -split ':.*?## ')[0]) -ForegroundColor Cyan }
# Displayed the following
#:      hello
#:      help
#:      world


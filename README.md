# Make-Help-Powershell

This repository was started as a response to the make help command that is avilable in Bash. In the end it turned out to be easier to create a function i powershell that can do the same thing to any Makefile instead of adding it to all the Makefiles you encounter.

```
function Make-Help {
    Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { Write-Host ('{0,-20} {1}' -f ($_ -split '(:)')[0], ($_ -split ':.*?## ')[1]) -ForegroundColor Cyan }
}
```

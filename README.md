# Make help

```
function Make-Help {
    Get-Content -path "makefile" | Select-String '^[a-zA-Z_-]+:.*?## .*$$' | ForEach-Object { Write-Host ('{0,-20} {1}' -f ($_ -split '(:)')[0], ($_ -split ':.*?## ')[1]) -ForegroundColor Cyan }
}
```
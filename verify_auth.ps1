$env:Path = "C:\Program Files\Git\cmd;" + $env:Path
Write-Host "Verifying GitHub Authentication..."
try {
    git push origin main --dry-run
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Authentication SUCCESSFUL! You are ready to deploy." -ForegroundColor Green
    } else {
        Write-Host "Authentication FAILED. Please try running 'git push origin main' manually and sign in." -ForegroundColor Red
    }
} catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
}
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

$env:Path = "C:\Program Files\Git\cmd;" + $env:Path
Write-Host "Git path added temporarily for this session."
git --version
Write-Host "Starting deployment. Please check for any authentication popups or browser windows..."
npm run deploy

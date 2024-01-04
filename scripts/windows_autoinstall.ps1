
# upgrade winget
winget upgrade winget

# check for git
$git = Get-Command git -ErrorAction SilentlyContinue
if ($git) {
    Write-Host "Git: Installed"
} else {
    Write-Host "Git: ... installing!"
    winget install --id Git.Git --scope machine -e -s winget --accept-source-agreements --accept-package-agreements
}

# check for vscode
$vscode = Get-Command code -ErrorAction SilentlyContinue
if ($vscode) {
    Write-Host "VSCode: Installed"
} else {
    Write-Host "VSCode: ... installing!"
    winget install --id Microsoft.VisualStudioCode --scope machine -e -s winget --accept-source-agreements --accept-package-agreements
}

# update path with vscode location
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User") 

# install remote/wsl extension
code --install-extension ms-vscode-remote.remote-wsl

# check if wsl is available
$wsl = Get-Command wsl -ErrorAction SilentlyContinue
if (!$wsl) {
    Write-Warning "Your computer may not be compatible with the course requirements."
    exit 1
}

# check for ubuntu and install if not available
$ubuntu = wsl -l -v | Select-String -Pattern "Ubuntu-20.04"
if ($ubuntu) {
    Write-Host "Ubuntu: Installed"
} else {
    Write-Host "Ubuntu: ... installing!"
    Start-Process C:\Windows\system32\wsl.exe -Verb RunAs --install
}


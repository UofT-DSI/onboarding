# check for admin rights
$admin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (!$admin) {
    Write-Warning "Plase run this script as an administrator"
    exit 1
}

# check for git
$git = Get-Command git -ErrorAction SilentlyContinue
if ($git) {
    Write-Host "Git: Installed"
} else {
    Write-Host "Git: ... installing!"
    winget install -id Git.Git -e -source winget
}

# check for vscode
$vscode = Get-Command code -ErrorAction SilentlyContinue
if ($vscode) {
    Write-Host "VSCode: Installed"
} else {
    Write-Host "VSCode: ... installing!"
    winget install -id Microsoft.VisualStudioCode -e -source winget
}

# install python, jupyter, remote/wsl extensions
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
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
    wsl --install -d Ubuntu
}


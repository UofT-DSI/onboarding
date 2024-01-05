
# upgrade winget
$winget = Get-Command winget -ErrorAction SilentlyContinue
if (!$winget) {
    Write-Error "winget is required to install the course software. Please see troubleshooting steps for updating your apps in the Microsoft Store."
    exit 1
} 

# make sure winget version > 1.6
$winget_version = winget --version
if ($winget_version -lt 1.6) {
    Write-Error "winget version 1.6 or greater is required to install the course software. Please see troubleshooting steps for updating your apps in the Microsoft Store."
    exit 1
}

# install windows terminal
$terminal = Get-Command wt -ErrorAction SilentlyContinue
if ($terminal) {
    Write-Host "Windows Terminal: Installed"
}
else {
    Write-Host "Windows Terminal: ... installing!"
    winget install --id Microsoft.WindowsTerminal -e -s winget --accept-source-agreements --accept-package-agreements
}

# check for git
$git = Get-Command git -ErrorAction SilentlyContinue
if ($git) {
    Write-Host "Git: Installed"
}
else {
    Write-Host "Git: ... installing!"
    winget install --id Git.Git --scope machine -e -s winget --accept-source-agreements --accept-package-agreements
}

# check for vscode
$vscode = Get-Command code -ErrorAction SilentlyContinue
if ($vscode) {
    Write-Host "VSCode: Installed"
}
else {
    Write-Host "VSCode: ... installing!"
    winget install --id Microsoft.VisualStudioCode -e -s winget --accept-source-agreements --accept-package-agreements
}

# update path with vscode location
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User") 

# install remote/wsl extension    
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-wsl

# add Git Bash to Windows Terminal using JSON Fragments
$terminal_settings = @{guid = "{" + [guid]::NewGuid().ToString() + "}"; name = "Git Bash"; commandline = "C:\Program Files\Git\bin\bash.exe -i -l"; icon = "C:\Program Files\Git\mingw64\share\git\git-for-windows.ico"; hidden = $false; startingDirectory = "%USERPROFILE%" }
$terminal_settings = @{ profiles = @($terminal_settings) }
$terminal_settings = $terminal_settings | ConvertTo-Json
# make directory only if it doesn't exist
if (!(Test-Path "C:\Users\$env:UserName\AppData\Local\Microsoft\Windows Terminal\Fragments\Git")) {
    mkdir "C:\Users\$env:UserName\AppData\Local\Microsoft\Windows Terminal\Fragments\Git"
}
$terminal_settings | Out-File -FilePath "C:\Users\$env:UserName\AppData\Local\Microsoft\Windows Terminal\Fragments\Git\gitbash.json" -Encoding Utf8

# install Anaconda
$anaconda = Get-Command conda -ErrorAction SilentlyContinue
if ($anaconda) {
    Write-Host "Anaconda: Installed"
}
else {
    Write-Host "Anaconda: ... installing!"
    winget install --id Anaconda.Miniconda3 -e -s winget --accept-source-agreements --accept-package-agreements
}

# update path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

# initialize anaconda
conda init powershell

# install python packages
pip install --upgrade pip
pip install numpy pandas matplotlib seaborn scikit-learn jupyter pyyaml

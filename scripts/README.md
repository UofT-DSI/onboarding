# Git Installation Scripts

This repository contains two scripts for checking and installing Git on your system: one for Unix-like systems (Bash script) and one for Windows (Batch script). Additionally, there's a tutorial script for learning Git basics.

## Contents
- `git_installation.sh`: Bash script for Unix-like systems (Linux, macOS).
- `git_installation.bat`: Batch script for Windows.
- `git_tutorial.sh`: Tutorial script for learning Git.

## Windows

### Prerequisites
- Windows operating system.
- Windows PowerShell

### Usage
```powershell
wget https://raw.githubusercontent.com/dtxe/DSI-Onboarding/windows_onboarding/scripts/windows_autoinstall.ps1 -out windows_autoinstall.ps1
.\windows_autoinstall.ps1
```

After this script is complete, please reboot your computer, and run the Ubuntu app and complete installation using the Linux and macOS instructions below.


## Linux or macOS

### Prerequisites
- A Unix-like operating system (Linux or macOS).
- Terminal access.

### Usage
`$ curl https://raw.githubusercontent.com/dtxe/DSI-Onboarding/windows_onboarding/scripts/linux_mac_autoinstall.sh | bash`



## Setting Up and Using the Git Tutorial Script

### Prerequisites
- A Unix-like operating system (Linux or macOS).
- Terminal access.
- `git_tutorial.sh` script.

### Steps
1. **Create a New Folder**:
Create a new folder named `testGitRepo`.

```
mkdir testGitRepo
```


2. **Move the Script**:
Move `git_tutorial.sh` into the `testGitRepo` folder.

```
mv /path/to/git_tutorial.sh /path/to/testGitRepo/
```


3. **Navigate to the Folder**:
Change your directory to `testGitRepo`.

```
cd /path/to/testGitRepo
```


4. **Set Script Permissions**:
Make `git_tutorial.sh` executable.

```
chmod +x git_tutorial.sh
```


5. **Run the Tutorial Script**:
Start the tutorial by executing the script.

```
./git_tutorial.sh
```


## Note
- The Bash script identifies your operating system and attempts to install Git if it's not already installed.
- The Batch script checks if Git is installed on Windows and provides a download link if it's not.

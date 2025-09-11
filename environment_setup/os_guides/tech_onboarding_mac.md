# Tech Onboarding - For Mac Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [UV](#UV)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your macOS onboarding guide! This document walks you through installing the core tools needed for the DSI Certificate. 

🚨 Complete this setup first. Then, for each module, follow its `SETUP.md` for module specific steps.  

Let’s get started!

## Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers, great for both beginners and experienced developers.

- Get VS Code [here](https://code.visualstudio.com) and install it like any app.
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
- You should now see VS Code installed. Open it and check that it runs and the extensions appear under the Extensions tab (four-square icon).

## Git
**Git** is a tool that tracks changes to your code, letting you save versions, undo mistakes, and collaborate with others. When using GitHub, **Git Credential Manager (GCM)** helps by securely remembering your login so you don’t have to enter it every time. 

On macOS, we install Git using Homebrew, a popular tool for managing software installations through the terminal.

- How to install Git:
  - Open **Terminal** and enter the following commands, one at a time.
  - Install Homebrew:
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
    ```
  - Tell your shell where to find Homebrew:
    ```
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile; eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
  - Confirm Homebrew installation:
    ```
    brew --version
    ```
    - You should see a version number printed. If not, try reinstalling Homebrew.
  - Install Git using Homebrew:
    ```
    brew install git
    ```
  - Confirm git installation:
    ```
    git --version
    ```
    - You should see a version number printed. If not, try reinstalling Git using Homebrew.
  
- How to install Git Credential Manager (GCM):
  - Open **Terminal** and enter the following commands, one at a time:
  - Install the latest version of GCM:
    ```
    brew install --cask git-credential-manager; brew upgrade --cask git-credential-manager
    ```
  - Confirm the installation:
    ```
    git-credential-manager --version
    ```
    - You should see a version number if it installed correctly.

## UV
UV is a lightweight, fast tool for managing Python environments and dependencies. It lets you create separate virtual environments (with the help of venv) for each project and install the exact packages it needs, so your setups don’t conflict with each other.
- How to install UV
  - Type the following command in your **Terminal**:
    ```bash
    curl -LsSf https://astral.sh/uv/install.sh | sh
    ```

  - Verify the installation:
    ```bash
    uv --version
    ```
    - You should see a version number printed. If not, try reinstalling UV.

> 👉 After installation, restart your computer to make sure UV is available everywhere.

## Conclusion
You now have the tools needed to set up your environment for each repo. For instructions on setting up a specific repo, please refer to that repo’s `SETUP.md`. 

For any questions or issues, reach out to: courses.dsi@utoronto.ca
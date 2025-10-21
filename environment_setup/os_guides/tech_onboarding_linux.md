# Tech Onboarding - For Linux Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [UV](#UV)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your Linux onboarding guide! This document walks you through installing the core tools needed for the DSI Certificate. 

🚨 Complete this setup first. Then, for each module, follow its `SETUP.md` for module specific steps.  

Let’s get started!

## Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers, great for both beginners and experienced developers.

- How to install VS Code:
  - Download the .deb file from [the installation page](https://code.visualstudio.com).
  - Open a terminal in the folder where the deb file is located (e.g., downloads).
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - VS Code should be openable after installation.
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)

## Git
**Git** is a tool that tracks changes to your code, letting you save versions, undo mistakes, and collaborate with others. When using GitHub, **Git Credential Manager (GCM)** helps by securely remembering your login so you don’t have to enter it every time.

- How to install Git:
  - Open your terminal and run:
    ```bash
    sudo apt update
    sudo apt install git
    ```
  - Confirm the installation:
    ```bash
    git --version
    ```
- How to install Git Credential Manager (GCM):
  - [Download the GCM .deb package](https://github.com/git-ecosystem/git-credential-manager/releases/tag/v2.6.1).
  - Navigate to the folder where the `.deb` file is saved.
  - In your terminal, run:
    ```bash
    sudo dpkg -i <THE .DEB FILE NAME>
    ```
  - Confirm the installation:
    ```bash
    git-credential-manager --version
    ```

Useful Resources: [Git Documentation](https://git-scm.com/doc), [Git Credential Manager Documentation](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md)

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
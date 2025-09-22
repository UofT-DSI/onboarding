# Tech Onboarding - For Windows Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [UV](#UV)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your macOS onboarding guide! This document walks you through installing the core tools needed for the DSI Certificate. For the best results, we recommend using Windows 11.

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
**Git** is a tool that tracks changes to your code, helping you save versions, undo mistakes, and collaborate with others. On Windows, installing Git also gives you **Git Bash**, a tool that makes your terminal behave more like the ones used on Mac and Linux. This helps make everyone's setup feel the same, no matter what operating system they're on.

- Get Git Bash [here](https://git-scm.com/download/win) and install it like any app.
  - During setup, make sure to:
    - For "Choosing the default editor used by Git" please select "Use Visual Studio Code as Git's default editor"
    - Click on "Use Window's Default Console Window" in the installation steps.
    - **Git Credential Manager** is an option in the installation steps, <u>***make sure to install it***</u>.
- Check that it works:
  - Open **Git Bash** and run:
    ```bash
    git --version
    ```
  - You should see something like `git x.x.x`. If not, try reinstalling Git and make sure Git Bash is selected during setup.

## UV
UV is a lightweight, fast tool for managing Python environments and dependencies. It lets you create separate virtual environments for each project and install the exact packages it needs, so your setups don’t conflict with each other.
- How to install UV
  - Type the following command in your **PowerShell**:
    ```bash
    powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
    ```

  - Verify the installation:
    ```bash
    uv --version
    ```
    - You should see a version number printed. If not, try reinstalling UV.

> 👉 After installation, restart your computer to make sure UV is available everywhere.
>
> 🚨 Note: We use PowerShell only once to install UV. After that, always use Git Bash for repo setup and daily work.

## Conclusion
You now have the tools needed to set up your environment for each repo. For instructions on setting up a specific repo, please refer to that repo’s `SETUP.md`. 

For any questions or issues, reach out to: courses.dsi@utoronto.ca

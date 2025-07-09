# Tech Onboarding - For Mac Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [Miniconda](#miniconda) / [Necessary Packages](#necessary-packages)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your macOS onboarding guide! This document will walk you through installing the essential tools you’ll use throughout the DSI Certificate. By setting things up now, you’ll avoid headaches later, most modules will run smoothly without needing extra setup. While some advanced topics might require additional tools, this core setup will cover the majority of what you’ll need. Let’s get started!

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

## Miniconda
Miniconda is a lightweight version of [Conda](https://en.wikipedia.org/wiki/Conda_(package_manager)), a tool that helps you manage programming environments and install the right packages (dependencies) for each project. It lets you keep different setups side by side, so your tools don’t conflict across projects.

- **🚨 Important**: If you already have Anaconda (a full-featured version of Conda), you can keep using it, no need to install Miniconda.
- How to install Miniconda
  - Download the Miniconda installer for [Apple Silicon](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.pkg) or [Intel Chips](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.pkg), depending on your Mac’s chip, and install it like any other app.
  - Confirm the installation by typing the following command in your **Terminal**:
      ```bash
      conda --version
      ```
    - You should see something like `conda 23.x.x`.

## Necessary Packages
Now that Conda is ready, let’s set up everything you’ll need for the DSI Certificate.

Open **Terminal** and enter the following commands, one at a time:
- Create your environment:
  ```bash
  conda create --name dsi_participant python=3.9
  ```

- Switch into your new environment
  ```bash
  conda activate dsi_participant
  ```

- Install the necessary packages:
  ```bash
  for package in numpy requests ipykernel pandas seaborn scikit-learn python-dotenv dask "pyarrow>=11.0.0" sacred sqlalchemy psycopg2 shap fancyimpute missingno tensorflow matplotlib plotly nbformat scikit-image opencv transformers yfinance pygam pybind11; do echo -e "➡️  Starting installation of \"$package\"..." && conda install -c conda-forge "$package" -y && echo "✅ Successfully installed \"$package\"" || echo "❌ Installation failed for \"$package\""; done 
  ```

- Install another set of necessary packages using a different tool:
  ```bash
  pip install l0bnb faraway islp
  ```

- Verify everything was installed:
  ```bash
  conda list
  ```

Bookmark the [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html), a reference as you begin working with Conda.

## Conclusion
You’ve now got all the essential tools set up for your DSI certificate. For any questions or issues, reach out to: courses.dsi@utoronto.ca

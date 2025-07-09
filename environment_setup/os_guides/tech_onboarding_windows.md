# Tech Onboarding - For Windows Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [Miniconda](#miniconda) / [Necessary Packages](#necessary-packages)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your Windows onboarding guide! This document will walk you through installing the essential tools you’ll use throughout the DSI Certificate. For the best results, we recommend using Windows 10 or 11. By setting things up now, you’ll avoid headaches later, most modules will run smoothly without needing extra setup. While some advanced topics might require additional tools, this core setup will cover the majority of what you’ll need. Let’s get started!

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
    - **Git Credential Manager** is an option in the installation steps, <u>***make sure to install it***</u>.
    - Click on "Use Window's Default Console Window" in the installation steps.
- Check that it works:
  - Open **Git Bash** and run:
    ```bash
    git --version
    ```
  - You should see something like `git x.x.x`. If not, try reinstalling Git and make sure Git Bash is selected during setup.

## Miniconda
Miniconda is a lightweight version of [Conda](https://en.wikipedia.org/wiki/Conda_(package_manager)), a tool that helps you manage programming environments and install the right packages (dependencies) for each project. It lets you keep different setups side by side, so your tools don’t conflict across projects.

- **🚨 Important**: If you already have Anaconda (a full-featured version of Conda), you can keep using it, no need to install Miniconda.
- Get Miniconda [here](https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe) and install it like any app.
  - During setup, make sure to:
    - Check “Add Miniconda to my PATH environment variable” (even though it says not recommended, we need this for Git Bash to work).
    - Check “Register Miniconda as the system’s default Python”.

      ![](./images/miniconda_setup.png)
- After installation:
  - Close any open Git Bash windows, then open a new one to ensure recent changes take effect.
  - Run this command in Git Bash to initialize Conda:
    ```bash
    conda init
    ```
  - Close Git Bash and open it again to apply the changes.
  - Run this command in Git Bash to make Conda load automatically in the future:
    ```bash
    echo ". \"$HOME/miniconda3/etc/profile.d/conda.sh\"" >> ~/.bashrc; source ~/.bashrc;
    ```

- Check that it works:
  - Open Git Bash and run:
    ```bash
    conda --version
    ```
    You should see something like `conda 23.x.x`.
  
  - Then run:
    ```bash
    conda activate
    ```
    This should change your prompt to show something like `(base)`, that means Conda is working! If not, **restart your computer** and try again.

## Necessary Packages
Now that Conda is ready, let’s set up everything you’ll need for the DSI Certificate.

Open **Git Bash** and enter the following commands, one at a time:
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

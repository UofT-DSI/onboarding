## Tech Onboarding - For Linux Users

### Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [Miniconda](#miniconda)
    - [Necessary Packages](#necessary-packages)
4. [Conclusion](#conclusion)

### Introduction
Welcome to your Linux onboarding guide! This document will walk you through installing the essential tools you’ll use throughout the DSI Certificate. By setting things up now, you’ll avoid headaches later, most modules will run smoothly without needing extra setup. While some advanced topics might require additional tools, this core setup will cover the majority of what you’ll need. Let’s get started!

### Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers—great for both beginners and experienced developers.

- How to install VS Code:
  - Download the .deb file from [the installation page](https://code.visualstudio.com).
  - Open a terminal in the folder where the deb file is located (e.g., downloads).
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - VS Code should be openable after installation.
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)

### Git
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
  - [Download the GCM .deb package](https://github.com/git-ecosystem/git-credential-manager/releases/tag/v2.4.1).
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

### Miniconda

Miniconda is a lightweight version of [Conda](https://en.wikipedia.org/wiki/Conda_(package_manager)), a tool that helps you manage programming environments and install the right packages (dependencies) for each project. It lets you keep different setups side by side, so your tools don’t conflict across projects.

- How to install Miniconda
  - Visit the [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html).
  - Choose and download the appropriate installer based on your system architecture: [x86_64-based systems](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh) | [ARM-based systems](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh) | [IBM Z mainframes](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-s390x.sh)
  - Open a terminal in the folder where the installer was downloaded.
  - Run the installer:
    ```bash
    bash Miniconda3-latest-Linux-<your_architecture>.sh
    ```
  - Follow the on-screen instructions. When asked, say “yes” to initializing Conda.
  - Confirm the installation:
    ```bash
    conda --version
    ```
  - You should see something like `conda 23.x.x`.

- Bookmark the [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html), a reference as you begin working with Conda.

#### Necessary Packages

Now that Conda is installed, let’s set up your coding environment with everything you’ll need for the DSI Certificate.

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
  conda install -c conda-forge numpy requests ipykernel pandas seaborn scikit-learn python-dotenv dask "pyarrow>=11.0.0" sacred sqlalchemy psycopg2 shap fancyimpute missingno tensorflow matplotlib plotly nbformat scikit-image opencv transformers yfinance pygam pybind11
  ```

- Install a few extra packages using a different tool:
  ```bash
  pip install l0bnb faraway islp
  ```

- Verify everything was installed:
  ```bash
  conda list
  ```

### Conclusion
You’ve now got all the essential tools set up for your DSI certificate. For any questions or issues, reach out to: courses.dsi@utoronto.ca
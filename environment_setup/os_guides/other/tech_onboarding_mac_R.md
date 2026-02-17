# Tech Onboarding - For Mac Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [Quarto](#quarto)
4. [R](#r)
5. [PLINK2](#plink2)
6. [Conclusion](#conclusion)

## Introduction
Welcome to your R-focused onboarding guide! This document walks you through installing the core tools needed for the DSI Certificate for R-based modules.

## Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers, great for both beginners and experienced developers.

- Get VS Code [here](https://code.visualstudio.com) and install it like any app.
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [R Extension](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
  - [Quarto Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)
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

## Quarto
Quarto is a free tool for creating documents that mix text, code, and results in one file. You write in a simple text format, and Quarto turns it into a polished report, webpage, slides, or PDF. It’s designed for clear, reproducible documents and works well with tools like VS Code and Jupyter.

- How to install Quarto:
  - [Get Started](https://quarto.org/docs/get-started/)

## R
R is a free programming language and software environment for data analysis and visualization. You write R code to analyze data and produce tables, models, and plots, and it is widely used in statistics, data science, and research.

- How to install R:
  - [Download and Install R](https://mirror.csclub.uwaterloo.ca/CRAN/) 

## PLINK2
PLINK is a free, open-source command-line tool for analyzing large-scale genetic and genomic data. It is commonly used for genome-wide association studies (GWAS) and provides fast utilities for quality control, data management, and basic statistical analysis of genotype data.

- How to install PLINK:
  ```
  brew install brewsci/bio/plink2
  ```

- Verify the installation by running: `plink2 --version`.

## Conclusion
You now have the tools needed to set up your environment for each repo. For instructions on setting up a specific repo, please refer to that repo’s `SETUP.md`. 

For any questions or issues, reach out to: courses.dsi@utoronto.ca
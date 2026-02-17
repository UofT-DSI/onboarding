# Tech Onboarding - For Linux Users

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

- How to install VS Code:
  - Download the .deb file from [the installation page](https://code.visualstudio.com).
  - Open a terminal in the folder where the deb file is located (e.g., downloads).
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - VS Code should be openable after installation.
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [R Extension](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
  - [Quarto Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)

## Git
**Git** is a tool that tracks changes to your code, letting you save versions, undo mistakes, and collaborate with others. When using GitHub, **Git Credential Manager (GCM)** helps by securely remembering your login so you don’t have to enter it every time.

- How to install Git:
  - Open your terminal and run:
    ```
    sudo apt update
    sudo apt install git
    ```
  - Confirm the installation:
    ```
    git --version
    ```
- How to install Git Credential Manager (GCM):
  - [Download the GCM .deb package](https://github.com/git-ecosystem/git-credential-manager/releases/tag/v2.6.1).
  - Navigate to the folder where the `.deb` file is saved.
  - In your terminal, run:
    ```
    sudo dpkg -i <THE .DEB FILE NAME>
    ```
  - Confirm the installation:
    ```
    git-credential-manager --version
    ```

Useful Resources: [Git Documentation](https://git-scm.com/doc), [Git Credential Manager Documentation](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md)

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

- Recommended (system-wide):
  - Download the Linux 64-bit binary from the [official site](https://www.cog-genomics.org/plink/2.0/).
  - Unzip the downloaded file:
    ```
    unzip plink2_linux_x86_64_*.zip
    ```
  - Move `plink2` to a directory on your PATH:
    ```
    sudo mv plink2 /usr/local/bin/
    sudo chmod +x /usr/local/bin/plink2
    ```
  - Open a new terminal and verify:
    ```
    plink2 --version
    ```

- Alternative (no `/usr/local/bin` changes):
  - Keep `plink2` under your home directory:
    ```
    mkdir -p ~/tools/plink2
    mv plink2 ~/tools/plink2/
    chmod +x ~/tools/plink2/plink2
    ```
  - Add it to PATH:
    ```
    echo 'export PATH="$HOME/tools/plink2:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    ```
  - Verify:
    ```
    plink2 --version
    ```


## Conclusion
You now have the tools needed to set up your environment for each repo. For instructions on setting up a specific repo, please refer to that repo’s `SETUP.md`. 

For any questions or issues, reach out to: courses.dsi@utoronto.ca

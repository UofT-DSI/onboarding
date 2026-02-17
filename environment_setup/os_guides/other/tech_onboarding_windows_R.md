# Tech Onboarding - For Windows Users

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

Steps
- Download `plink2.exe` (PLINK 2.0) from the [official site](https://www.cog-genomics.org/plink/2.0/).
- Move the file to a stable folder, for example `C:\Program Files\PLINK\`.
- Add that folder to your **PATH** environment variable.
- Open a new Command Prompt, PowerShell, or Git Bash window.
- Verify the installation by running: `plink2 --version`.

## Restart after installation

If the terminal does not recognize a command (e.g., `plink2`, `R`, or `quarto`) after completing the installation steps, restart your computer. This allows the system to refresh environment variables (including `PATH`) so newly installed programs are properly detected.

After restarting, open a new terminal and verify the installation, for example:

```
plink2 --version
R --version
quarto --version
```

## Conclusion
You now have the tools needed to set up your environment for each repo. For instructions on setting up a specific repo, please refer to that repo’s `SETUP.md`. 

For any questions or issues, reach out to: courses.dsi@utoronto.ca

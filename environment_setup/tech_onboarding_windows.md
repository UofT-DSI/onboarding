# Tech Onboarding - For Windows Users

## Table of Contents

0. [Introduction](#introduction)
1. [Visual Studio Code](#visual-studio-code)
2. [Git](#git)
3. [Miniconda](#miniconda)
    - [Necessary Packages](#necessary-packages)
4. [Conclusion](#conclusion)

## Introduction
Welcome to your Linux onboarding guide! This document will walk you through installing the essential tools you’ll use throughout the DSI Certificate. By setting things up now, you’ll avoid headaches later, most modules will run smoothly without needing extra setup. While some advanced topics might require additional tools, this core setup will cover the majority of what you’ll need. Let’s get started!

## Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers—great for both beginners and experienced developers.

- [VS Code installation page](https://code.visualstudio.com)
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)

## Git
**Git** is a tool that tracks changes to your code, letting you save versions, undo mistakes, and collaborate with others.  
On Windows, Git also includes **Git Bash**, a terminal application that lets you use Git and many common Unix commands. This is especially helpful because most coding instructions (including ours) use Unix-style commands, which aren’t supported by default in the regular Windows Command Prompt.

- [Git Installation page](https://git-scm.com/download/win)
  - Note: **Git Credential Manager** is an option in the installation steps, <u>***make sure to install it***</u>.
  - Note: Click on "Use Window's Default Console Window" in the installation steps.

<!-- 🚨🚨🚨
- [Steps to connect Git Bash with Conda](https://www.youtube.com/watch?v=M33oOq-c60s): A video tutorial on connecting Git Bash with Conda, which is helpful for Windows users.
- [connecting git bash and conda](https://www.youtube.com/watch?v=UqJHDB9z7f4)
- [Set VSCode as your default Git editor](https://docs.github.com/en/get-started/git-basics/associating-text-editors-with-git#using-visual-studio-code-as-your-editor): Git's default editor is an advanced terminal-based text editor (vim) that can be confusing to use. VSCode will make using Git a bit easier.

**🚨 NOTE**: Please Make sure you don't have Anaconda as Miniconda and Anaconda don't mix well with each other.

Steps:
* Click the Start Button and Search and open "Anaconda Prompt (Miniconda3)" 
* Execute the following command: `conda init bash`
    * close the window afterwards
* Click the Start Button and Search and open "Git Bash"
* Execute the following command:
```
echo '. ${HOME}/.bash_profile' >> ~/.bashrc
```
* close the window
* restart your computer

After doing so, you should have the ability run conda inside of your git bash, simulating a bash environment that is sufficient for your learning.

🚨🚨🚨 -->

## Miniconda
Miniconda is a lightweight version of [Conda](https://en.wikipedia.org/wiki/Conda_(package_manager)), a tool that helps you manage programming environments and install the right packages (dependencies) for each project. It lets you keep different setups side by side, so your tools don’t conflict across projects.

- How to install Miniconda

  - **🚨 NOTE**: Please Make sure you don't have Anaconda, as Miniconda and Anaconda don't mix well with each other.

  - [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html)
- Confirm the installation:
  ```bash
  conda --version
  ```
  - You should see something like `conda 23.x.x`.

- Bookmark the [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html), a reference as you begin working with Conda.

### Necessary Packages
Now that Conda is installed, let’s set up your coding environment with everything you’ll need for the DSI Certificate. Open Git Bash:

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

## Conclusion
You’ve now got all the essential tools set up for your DSI certificate. For any questions or issues, reach out to: courses.dsi@utoronto.ca

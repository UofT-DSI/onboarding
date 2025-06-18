## Tech Onboarding - For Windows Users

1. [Miniconda](#miniconda)
    - [Installing Miniconda](#heres-how-you-can-get-it-installed-on-your-system)
    - [Useful Resources](#useful-resources)
2. [Visual Studio Code](#visual-studio-code)
    - [Installing VS Code](#heres-how-you-can-get-it-installed-on-your-system-1)
3. [Git and Git Credential Manager](#git)
    - [Installing Git and GCM](#heres-how-you-can-get-it-installed-on-your-system-2)
    - [Useful Resources](#useful-resources)
4. [Windows Terminal](#windows-terminal-optional)
5. [Necessary Packages](#necessary-packages)
6. [Conclusion](#conclusion)

### Introduction
Welcome to your Linux onboarding guide! This document will walk you through installing the essential tools you’ll use throughout the DSI Certificate. By setting things up now, you’ll avoid headaches later, most modules will run smoothly without needing extra setup. While some advanced topics might require additional tools, this core setup will cover the majority of what you’ll need. Let’s get started!

### Visual Studio Code
Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers—great for both beginners and experienced developers.

- [Download and Install VS Code](https://code.visualstudio.com)
- Install these VS Code extensions by clicking the links and hitting “Install”:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)

### Git
**Git** is a version control system that developers use to keep track of changes in their code. Think of it as a detailed history book of your project's progress. You can go back and see earlier versions of your work, fix mistakes, or combine updates from multiple people without losing anything.

For Windows users, **Git Bash** is a tool that lets you use Git commands, similar to how you would on Linux or macOS systems. It's like having a special program that allows Windows to understand and execute these commands. However, if you mention Git Bash to friends who use macOS or Linux, they might not be familiar with it, as they use a terminal application on their systems for their Git operations. In class, we might use the terms "terminal" and "Git Bash" interchangeably, but they essentially mean the same thing — a place where you type commands to interact with Git.

**Git Credential Manager (GCM)** is a tool that makes using [Git](#git-and-brew-installation), the version control system, much more convenient. When you're working with projects using Git, you'd have to enter your username and password every time you interact with them. GCM simplifies this by remembering (or "caching") your login details after you enter them once. This way, you don’t have to keep typing them in every time you interact with your projects, speeding up your workflow and reducing the hassle of managing access to your projects.

#### Here’s how you can get it installed on your system:

- [Git Installation page](https://git-scm.com/download/win): Visit this page to download Git for Windows.
  - Note: **Git Credential Manager** is an option in the installation steps, <u>***make sure to install it***</u>.
  - Note: Click on "Use Window's Default Console Window" in the installation steps.

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

#### Useful Resources
- [Git Credential Manager Documentation](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md)

### Windows Terminal (Optional)
Windows Terminal is a new, free tool you can download that lets you use different command-line programs all in one place. Unlike the basic command prompt that comes with Windows, Windows Terminal has more features and lets you customize it to fit your needs. This makes it easier and more efficient to use multiple programs at the same time.

* Install the [Windows Terminal App](https://apps.microsoft.com/detail/9N0DX20HK701?hl=en-us&gl=US) from the windows app store

### Miniconda

_Conda_ is a versatile tool used on Windows, macOS, and Linux for **managing software packages** and **work environments**. It supports many programming languages, including Python, R, Ruby, Lua, Scala, Java, JavaScript, C/C++, FORTRAN, and more.

- **A package management system** works somewhat like the App Store on your phone, but it’s specifically designed for managing complex software packages used in programming and data analysis, ensuring that all necessary software dependencies are managed without conflicts.

- **A work environment** is a specific setup on your computer for managing and running projects. It includes all the software, libraries, and tools needed. Conda allows you to create multiple isolated work environments, each tailored to specific project requirements. This is crucial in places like the DSI (Data Science Institute), where it ensures that everyone’s computer is set up identically, mimicking how a program would run on any other machine.

**Miniconda** is a software bundle that includes Conda, Python, and a small selection of essential packages. It's designed for those who want to manage their tools and environments with simplicity, allowing users to add additional packages as needed. This makes Miniconda an ideal choice for setting up a lean and efficient development environment.

#### Here’s how you can get it installed on your system:
- **🚨 NOTE**: Please Make sure you don't have Anaconda as Miniconda and Anaconda don't mix well with each other.
- Visit the [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html).

#### Useful Resources
- [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html): A quick reference guide for Conda, detailing common commands and usage scenarios, aiding in easy management of environments and packages.

### Necessary Packages

Miniconda comes with many useful Python packages, but there are still some that need to be installed separately for your modules. Here’s how to set up a specific work environment for your modules.

Open your terminal, and use the command below to create a new work environment named "dsi_participant". This command will automatically install Python version 3.9 in the environment, so you don't need to install it separately.

```bash
conda create --name dsi_participant python=3.9
```

To use the new environment you created, you need to activate it. Use the command below to activate your "dsi_participant" environment:

```bash
conda activate dsi_participant
```

This command switches your terminal to use the Python version and packages installed within the "dsi_participant" environment, readying it for your work on the modules.


Next, you'll need to install various packages essential for your modules. The following command installs a comprehensive set of packages all at once:

```bash
conda install -c conda-forge numpy requests ipykernel pandas seaborn scikit-learn python-dotenv dask pyarrow">=11.0.0" sacred sqlalchemy psycopg2 shap fancyimpute missingno tensorflow matplotlib plotly nbformat scikit-image opencv transformers yfinance pygam pybind11
```

Running this command in your "dsi_participant" environment ensures you have almost all the necessary tools installed for the duration of the certificates.

Some packages aren’t available through Conda, so we use another tool called **Pip**. Pip is similar to Conda but accesses a broader range of software packages. By using Pip, we can install these additional packages directly into the active environment. Since your "dsi_participant" environment is activated, Pip will automatically install the new packages there.

Here’s the command to install the remaining packages:

```bash
pip install l0bnb faraway islp 
```

This step completes the setup of all the necessary software for your modules in the designated environment.

**And that's it!**

If you're interested in checking whether all of the necessary packages have been installed, you can list them by running the following command in your terminal:

```bash
conda list
```

This command will display all the packages currently installed in your `dsi_participant` environment, allowing you to verify that everything is set up correctly.

### Conclusion
This guide has equipped you with all the essential tools needed for your data science journey—from setting up Miniconda for managing dependencies, to coding in VS Code, and ensuring smooth version control with Git and Git Credential Manager. By installing these tools now, you’re setting yourself up for a hassle-free experience, allowing you to focus fully on your learning modules throughout the cohort without further interruptions for software installations.

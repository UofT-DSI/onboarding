## Tech Onboarding - For Mac Users

### Table of Contents

1. [Miniconda](#miniconda)
    - [Installing Miniconda](#heres-how-you-can-get-it-installed-on-your-system)
    - [Useful Resources](#useful-resources)
2. [Visual Studio Code](#visual-studio-code)
    - [Installing VS Code](#heres-how-you-can-get-it-installed-on-your-system-1)
3. [Git and Brew](#git-and-brew-installation)
    - [Installing Git and Brew](#heres-how-you-can-get-it-installed-on-your-system-2)
4. [Git Credential Manager](#git-credential-manager)
    - [Installing GCM](#heres-how-you-can-get-it-installed-on-your-system-3)
5. [Necessary Packages](#necessary-packages)
6. [Conclusion](#conclusion)

### Miniconda

_Conda_ is a versatile tool used on Windows, macOS, and Linux for **managing software packages** and **work environments**. It supports many programming languages, including Python, R, Ruby, Lua, Scala, Java, JavaScript, C/C++, FORTRAN, and more.

- **A package management system** works somewhat like the App Store on your phone, but it’s specifically designed for managing complex software packages used in programming and data analysis, ensuring that all necessary software dependencies are managed without conflicts.

- **A work environment** is a specific setup on your computer for managing and running projects. It includes all the software, libraries, and tools needed. Conda allows you to create multiple isolated work environments, each tailored to specific project requirements. This is crucial in places like the DSI (Data Science Institute), where it ensures that everyone’s computer is set up identically, mimicking how a program would run on any other machine.

**Miniconda** is a software bundle that includes Conda, Python, and a small selection of essential packages. It's designed for those who want to manage their tools and environments with simplicity, allowing users to add additional packages as needed. This makes Miniconda an ideal choice for setting up a lean and efficient development environment.

#### Here’s how you can get it installed on your system:

- Visit the [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html).
- Choose and download the appropriate installer based on your system architecture:
  - **x86_64-based systems**:
    - [Bash version](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh)
    - [Pkg version](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.pkg)
  - **ARM-based systems (M chips)**:
    - [Bash version](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh)
    - [Pkg version](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.pkg)

#### Useful Resources
- [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html): A quick reference guide for Conda, detailing common commands and usage scenarios, aiding in easy management of environments and packages.

### Visual Studio Code

Visual Studio Code (VS Code) is a free software similar to Microsoft Word, but instead of handling documents, it helps you write and edit code for creating computer programs. It’s user-friendly and can be customized to fit your specific needs, much like how you can adjust settings in Word. VS Code supports a wide range of programming languages, making it versatile for various coding projects.

One of the standout features of VS Code is its extensive library of extensions, which can enhance and expand its capabilities. 

Another key advantage of VS Code is its performance. Despite its rich feature set, it remains lightweight and fast, ensuring that it runs smoothly even on less powerful hardware. This balance of power and efficiency makes it an ideal choice for both beginners and experienced developers.

#### Here’s how you can get it installed on your system:

- [Installation Page](https://code.visualstudio.com)
- Extensions:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Enhances Python programming capabilities within VS Code.
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter): Allows for Jupyter notebook support, enabling data science and machine learning tasks.
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph): Visualization for Git commit trees
- Enable command line access:
  - [Follow the instructions here](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) to enable launching VSCode from the command line

### Git and Brew
**Git** is a version control system that developers use to keep track of changes in their code. Think of it as a detailed history book of your project's progress. You can go back and see earlier versions of your work, fix mistakes, or combine updates from multiple people without losing anything.

**Brew**, or Homebrew, is a package manager specifically for macOS and Linux systems. It simplifies the process of installing and managing software on your computer. Instead of searching for software online, downloading it, and manually installing, Brew lets you install programs with simple commands in your terminal, streamlining the whole process. It's especially handy for setting up development environments, like installing Git, so you can start coding more efficiently.

#### Here’s how you can get it installed on your system:

Run the following commands in your terminal:
  ```bash
  # Test whether if you'r system has brew
  brew --version;
  
  # Command to install brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
  
  # Lists the packages that brew has installed on your system
  brew list;

  # Command to install git through brew
  brew install git;
  ```
  - For a more detailed explanation of brew and the installation process, please visit the [Brew Installation Page](https://brew.sh).


### Git Credential Manager
**Git Credential Manager (GCM)** is a tool that makes using [Git](#git-and-brew-installation), the version control system, much more convenient. When you're working with projects using Git, you'd have to enter your username and password every time you interact with them. GCM simplifies this by remembering (or "caching") your login details after you enter them once. This way, you don’t have to keep typing them in every time you interact with your projects, speeding up your workflow and reducing the hassle of managing access to your projects.

#### Here’s how you can get it installed on your system:

- The following commands allow you to install, update and check if GCM has been installed properly:
  ```bash
  brew install --cask git-credential-manager;
  brew upgrade --cask git-credential-manager;
  git-credential-manager --version;
  ```
  - [Git Credential Manager Documentation](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md)
  - [Detailed Installation Process](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md)

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

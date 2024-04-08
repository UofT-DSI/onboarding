## Tech Onboarding - For Mac Users

### Miniconda Installation
Miniconda is a minimal installer for Conda, a package and environment management system. It helps manage different versions of software and their dependencies, ensuring compatibility and ease of installation.

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
Visual Studio Code (VS Code) is a free, open-source code editor that supports a variety of programming languages and tools. It's known for its ease of use, flexibility, and powerful features.

- [Installation Page](https://code.visualstudio.com)
- Extensions:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Enhances Python programming capabilities within VS Code.
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter): Allows for Jupyter notebook support, enabling data science and machine learning tasks.
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph): Visualization for Git commit trees
- Enable command line access:
  - [Follow the instructions here](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) to enable launching VSCode from the command line

### Git and Brew Installation
Git is a version control system used to track changes in source code during software development. Brew is a package manager for macOS that simplifies the installation of software on Apple's macOS operating system and Linux. We will need it in order to install Git.

- Visit the [Brew Installation Page](https://brew.sh) for a more detailed explanation of brew and installation process.
- Run the following commands in your terminal:
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

### Git Credential Manager
Git Credential Manager (GCM) is a tool that improves the experience of using Git by caching your credentials, so you don't have to type them in every time.

- [README.md](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md)
- [Detailed Installation Process](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md)
- The following commands allow you to install, update and check if GCM has been installed properly:
  ```bash
  brew install --cask git-credential-manager;
  brew upgrade --cask git-credential-manager;
  git-credential-manager --version;
  ```

### Necessary Packages

Conda already comes with a lot of good to have python packages but we still need to make sure that there are some packages that are installed that don't come with Conda.

Open your terminal and run the following command:
```
conda env create -f environment.yml
conda activate dsi_participant
```
This should install all of the necessary packages needed for your classes.

But in the event that you'd like to not go forward with Conda, Python 3.11 and the following packages are the main packages we will be needing:

* numpy
* requests
* ipykernel 
* pandas 
* seaborn 
* scikit-learn 
* dask==2024.2.0  
* dask-expr==0.4.1 
* python-dotenv 
* sacred 
* SQLAlchemy=2.0.27 
* psycopg2=2.9.9 
* shap=0.44.1 
* fancyimpute 
* missingno 
* tensorflow 
* matplotlib 
* plotly 
* nbformat 
* scikit-image 
* opencv 
* transformers 
* yfinance 
* islp 
* l0bnb 
* faraway 
* pygam 

---

Each tool in this guide is essential for a seamless development experience, from managing dependencies with Miniconda to coding in VS Code, installing Git for version control, and efficiently handling Git credentials with Git Credential Manager.
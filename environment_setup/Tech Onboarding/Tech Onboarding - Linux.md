## Tech Onboarding - For Linux Users

### Miniconda Installation
Miniconda is a minimal installer for Conda, a package and environment management system. It helps manage different versions of software and their dependencies, ensuring compatibility and ease of installation.

- Visit the [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html).
- Choose and download the appropriate installer based on your system architecture:
  - [x86_64-based systems](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh): For most 64-bit Linux systems.
  - [ARM-based systems](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh): For ARM-based Linux systems.
  - [IBM Z mainframes](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-s390x.sh): For IBM Z mainframes.

#### Useful Resources
- [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html): A quick reference guide for Conda, detailing common commands and usage scenarios, aiding in easy management of environments and packages.

### Visual Studio Code
Visual Studio Code (VS Code) is a free, open-source code editor that supports a variety of programming languages and tools. It's known for its ease of use, flexibility, and powerful features.

- [Installation Page](https://code.visualstudio.com)
- Installation Process:
  - Download the .deb file.
  - Open a terminal in the folder where the deb file is located (e.g., downloads).
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - VSCode should be openable after installation.
- Extensions:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Enhances Python programming capabilities within VS Code.
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter): Allows for Jupyter notebook support, enabling data science and machine learning tasks.

### Git Installation
Git is a version control system used to track changes in source code during software development.

- Run the following commands in your terminal to install Git:
  ```bash
  git --version; # Check if Git is already installed.
  sudo apt update; # Update package lists.
  sudo apt install git-all; # Install Git.
  ```

### Git Credential Manager
Git Credential Manager (GCM) is a tool that improves the experience of using Git by caching your credentials, so you don't have to type them in every time.

- [README.md](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md): Information about GCM.
- [Installation Process](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md): Detailed installation instructions.
- [Download the .deb file](https://github.com/git-ecosystem/git-credential-manager/releases/tag/v2.4.1): Download the GCM .deb package.
- Installation Process:
  - Download the .deb file.
  - Open a terminal in the folder where the .deb file is located.
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - Check installation with `git-credential-manager --version`.

### Necessary Packages
Conda already comes with a lot of good to have python packages but we still need to make sure that there are some packages that are installed that don't come with Conda.

Open your terminal and run the following command:
```
conda install matplotlib numpy pandas scipy scikit-learn seaborn jupyter pyyaml plotly conda-forge::python-kaleido requests
```

This should install all of the necessary packages needed for your classes.

---

Each tool in this guide is essential for a seamless development experience, from managing dependencies with Miniconda to coding in VS Code, installing Git for version control, and efficiently handling Git credentials with Git Credential Manager.
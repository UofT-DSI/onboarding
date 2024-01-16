## Tech Onboarding - For Windows Users

### Miniconda Installation
Miniconda is a minimal installer for Conda, a package and environment management system. It helps manage different versions of software and their dependencies, ensuring compatibility and ease of installation.

- Visit the [Miniconda Installation Page](https://docs.conda.io/projects/miniconda/en/latest/index.html).

#### Useful Resources
- [Conda Cheat Sheet](https://conda.io/projects/conda/en/latest/user-guide/cheatsheet.html): A quick reference guide for Conda, detailing common commands and usage scenarios, aiding in easy management of environments and packages.

### Visual Studio Code
Visual Studio Code (VS Code) is a free, open-source code editor that supports a variety of programming languages and tools. It's known for its ease of use, flexibility, and powerful features.

- [Installation Page](https://code.visualstudio.com)
- Extensions:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Enhances Python programming capabilities within VS Code.
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter): Allows for Jupyter notebook support, enabling data science and machine learning tasks.

### Git Installation
Git is a version control system used to track changes in source code during software development.

- [Git Installation page](https://git-scm.com/download/win): Visit this page to download Git for Windows.
  - Note: **Git Credential Manager** is an option in the installation steps, <u>***make sure to install it***</u>.
    - Git Credential Manager (GCM) is a tool that improves the experience of using Git by caching your credentials, so you don't have to type them in every time.
    - [README.md](https://github.com/git-ecosystem/git-credential-manager/blob/main/README.md): Information about GCM.
  - Note: Click on "Use Window's Default Console Window" in the installation steps.

- [Dmeo of How to connect Git Bash with Conda](https://www.youtube.com/watch?v=M33oOq-c60s): A video tutorial on connecting Git Bash with Conda, which can be helpful for Windows users.

Steps:
* Click the Start Button and Search and open "Anaconda Prompt (Miniconda3)" 
* Execute the following command: `conda init bash`
    * close the window afterwards
* Click the Start Button and Search and open "Git Bash"
* Execute the following command: `echo '. ${HOME}/.bash_profile' >> ~/.bashrc`
    * close the window
* restart your computer

After doing so, you should have the ability run conda inside of your git bash, simulating a bash environment that is sufficient for your learning.

### Windows Terminal (Optional)
Windows Terminal is a modern, open-source terminal application that allows you to run multiple command-line tools and shells in one window. It provides a more feature-rich and customizable terminal experience compared to the default Windows Command Prompt.

* Install the [Windows Terminal App](https://apps.microsoft.com/detail/9N0DX20HK701?hl=en-us&gl=US) from the windows app store

### Necessary Packages
Conda already comes with a lot of good to have python packages but we still need to make sure that there are some packages that are installed that don't come with Conda.

Open your git bash and run the following command:
```
conda install matplotlib numpy pandas scipy scikit-learn seaborn jupyter plotly conda-forge::python-kaleido
```

This should install all of the necessary packages needed for your classes.

---

Each tool in this guide is essential for a seamless development experience, from managing dependencies with Miniconda to coding in VS Code, installing Git for version control, and efficiently handling Git credentials with Git Credential Manager.
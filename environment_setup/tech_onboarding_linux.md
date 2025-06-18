## Tech Onboarding - For Linux Users

### Table of Contents

1. [Miniconda](#miniconda)
2. [Visual Studio Code](#visual-studio-code)
3. [Git](#git)
4. [Necessary Packages](#necessary-packages)
5. [Conclusion](#conclusion)

### Miniconda

Miniconda is a lightweight version of [Conda](https://en.wikipedia.org/wiki/Conda_(package_manager)), a tool that helps you manage programming environments and install the right packages (dependencies) for each project. It lets you keep different setups side by side, so your tools don’t conflict across projects.

- how to install Miniconda
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
### Visual Studio Code

Visual Studio Code (VS Code) is a free and beginner-friendly code editor. Think of it like Microsoft Word, but for writing and editing code. It works with many programming languages and can be customized with extensions to fit your needs. It’s fast, lightweight, and runs well on most computers—great for both beginners and experienced developers.

- how to install VS Code:
  - Download the .deb file from [the installation page](https://code.visualstudio.com).
  - Open a terminal in the folder where the deb file is located (e.g., downloads).
  - Run `sudo dpkg -i <THE .DEB FILE>`.
  - VSCode should be openable after installation.
- how to install VS Code extensions:
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter Extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Git Graph Extension](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)

### Git
**Git** is a tool that tracks changes to your code, letting you save versions, undo mistakes, and collaborate with others. When using GitHub, **Git Credential Manager (GCM)** helps by securely remembering your login so you don’t have to enter it every time.

- how to install Git:
  - Open your terminal and run:
    ```bash
    sudo apt update
    sudo apt install git
    ```
  - Confirm the installation:
    ```bash
    git --version
    ```
- how to install Git Credential Manager (GCM):
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
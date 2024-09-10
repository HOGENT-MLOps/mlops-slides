# Introduction

## Sofware

We use a lot of software packages in this course, but you don't necessarily need to install them all right away. The software is introduced gradually in the lab assignments. The following list gives an overview of the software you will need:

You will need the following software:

- A good text editor. **Visual Studio Code** is recommended, preferably with the following plugins:
    - [Markdown All in One (Yu Zhang)](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    - [markdownlint (David Anson)](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
- **Git client** (including Git Bash on Windows). A graphical Git client like Gitkraken is *not* recommended. You should learn to use Git from the command line.
- **Docker** (including Docker Compose). You can install Docker Desktop for Windows or Mac, or Docker CE for Linux. Use WSL2 as the backend on Windows.

It is best to install the required software using a package manager, e.g., [Chocolatey](http://chocolatey.org/) on Windows or [Homebrew](https://brew.sh/) for Mac. Linux users are, of course, familiar with this method and use their distribution's package manager, e.g., `apt` (Debian, Ubuntu), `dnf` (Fedora and RHEL family), `pacman` (Arch Linux), etc. Check if you have these tools installed. If so, upgrade to the latest versions. If not, install them through the package manager.

:information_source: For this course, the use of GitHub Copilot is allowed.

## Git configuration

All your work for this course is tracked in the version control system Git. On the banner of the intro page of the Chamilo course, you'll find a link that creates a new repository where you save all your work. This repository is visible to you and the instructor. In addition to configuring the systems you set up, you will also maintain your documentation there, such as lab reports and cheat sheets.

Guidelines for starting your Git project:

- You should already have a GitHub account. If you haven't done so yet, be sure to link your `@student.hogent.be` email address to the account. You can then apply for the [**GitHub Student Developer Pack**](https://education.github.com/pack) which includes various interesting offers. It's possible to register multiple email addresses, and it makes sense to also link your private address. This way, you can continue using your GitHub account after graduation.

- Create an [**SSH key pair**](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to simplify pushing to GitHub, follow the instructions provided. For convenience, enter an empty passphrase (otherwise, you'll need to enter the passphrase every time you use the key).

- Enable [**two-factor authentication**](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa) on your GitHub account. This is a security measure that is now required on GitHub.

- **Basic Git configuration**, if you haven't done this before (check in the configuration file `~/.gitconfig`):

```bash
git config --global user.name ”FIRSTNAME LASTNAME”
git config --global user.email ”FIRSTNAME.LASTNAME@student.hogent.be”
git config --global push.default simple
git config --global core.autocrlf input # <-- macOS, Linux only
git config --global core.autocrlf true  # <-- Windows only
git config --global pull.rebase true
git config --global core.ignorecase false
```

- Create a **local directory** that you reserve for everything related to this course. Within this directory, you can clone your GitHub repository. On your repository's GitHub page, click on the green button on the right (Code), choose "Use SSH", and copy the link in the format `git@github.com:HoGentTIN/REPO_NAME-USERNAME.git`. This will create a local copy of the repository in a subdirectory. You can rename this directory and move it; everything will still work. It's a bad idea to clone the repository in a folder that is synced to the cloud (e.g., OneDrive, Dropbox, Google Drive, iCloud, etc.).

```bash
cd Documents/Courses/MLOps/
git clone git@github.com:HOGENT-MLOps/REPO_NAME-USERNAME.git
```

- Review the files in the `assignments` directory. Here you'll find the assignments for all labs.
- In the `reports` directory, you'll find templates for reports and cheat sheets in [Markdown format](https://guides.github.com/features/mastering-markdown/). Customize the template by adding your name.
    - There is an example assignment `00-dummy.md` with an example report `00-dummy-report.md`. Have a look at them to see how you are expected to structure your lab reports. **This is the minimum we expect for a lab report.**
- Also, immediately add your name and repository URL to the `README.md`.

## Processing errata

It is possible that errors may be found in the lab assignments during the semester. These will be published in the [source repository](https://github.com/HOGENT-MLOps/mlops-labs). You can systematically apply these changes to your own personal GitHub repository where you are working on the lab assignments. Simply open your GitHub repository in the browser and click the "Sync" button.

Any errata will be announced via Chamilo.

## General Guidelines

In this section, you will find some general guidelines to help you work more smoothly and efficiently.

- Before starting a lab assignment, prepare yourself by studying all the provided study materials: manuals, screencasts, etc. There is no need to "memorize" everything, but make sure you are familiar enough with the content so that you can quickly find the correct and relevant information. You can find this through the references in the individual lessons on this page.

- **Work step by step.** Don't write too much code at once. First, try to obtain a minimally working solution and immediately commit it to Git. Make minimal changes and test each change thoroughly. The larger and more significant the changes, the greater the chance of errors and the more difficult they are to debug. As soon as something works and you've made progress, commit it to Git right away with a clear, descriptive commit message.

- **Learn to use Git from the command line.** Most Git commands provide detailed explanations on how to proceed and how to undo the last step. This will eventually give you a better understanding of how Git works than you would get from using a GUI.

- **Make "atomic" commits**, i.e., try to limit each commit to a single "reason" for making changes to the existing code. This makes the "history" of your project more transparent and also makes it easier to revert to a specific step if something goes wrong.

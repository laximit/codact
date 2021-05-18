# Multi

Multi is a Shellscript made for programmers that use Linux/Mac/WSL, aiming to increase productivity in creating, opening or deleting projects with just a line in the terminal.

Now the script only have 6 languages in the script, new languages can be added if needed.

## Table of Contents

- [Install](#install)
- [Actions](#actions)
  - [Edit](#edit)
  - [Create](#create)
  - [Open](#open)
  - [Delete](#delete)
  - [Help](#help)
- [](#)

## Install

Using wget:

```sh
wget -O - https://raw.githubusercontent.com/laximit/Multi/master/install.sh | bash
```

Using curl:

```sh
bash <(curl -s https://raw.githubusercontent.com/laximit/Multi/master/install.sh)
```

## Actions

### Edit

You can use Edit action to change your workspace

```sh
multicode edit *Workspace*
```

Remember that the script starts from the Home folder, so there is no need to add it to your **_Workspace_**

Example:

```sh
# Neovim
sh multi.sh edit Codes nvim
# Vim
sh multi.sh edit Codes vim
# VSCode (use '\' if you need to add spaces)
sh multi.sh edit Codes code\ .
```

### Create

Use this action to create a new project, you use it by executing the script followed by the **Create Action**, then your **Project Language** and your **Project Name**.

Didn't understand? Basically you need to type

```sh
sh multi.sh create *Language* *Name*
```

Then your project will be created quickly and automatically open in your chosen editor.

But remember that you need to type in this order, I'm not a great programmer...yet.

Example:

```sh
sh multi.sh create shell MyScript
```

### Open

Now that you have created your Project, you can open it from anywhere by typing:

```sh
sh multi.sh open *Language* *Name*
```

It'll just go to your workspace folder and open up your desired project, simple.

Example:

```sh
sh multi.sh open html MyWebsite
```

### Delete

If you want to delete something, you just need to type

```sh
sh multi.sh delete *Language* *Name*
```

Then it'll going to ask if you really want to do it, if you're sure, just type "yes" and see that project disappear :0

Example:

```sh
sh multi.sh delete python MyModule
```

## Languages

The current avaliable languages are:

- Python
- CSharp
- Html
- Shell
- React
- Java

## Usage

Basically all the commands are:

```sh
# Edit
sh multi.sh edit *Workspace* *Editor*

# Create
sh multi.sh create *Language* *Name*

# Open
sh multi.sh open *Language* *Name*

# Delete
sh multi.sh delete *Language* *Name*
```

Examples:

```sh
# Edit
sh multi.sh edit MyCodes nvim

# Create
sh multi.sh create shell MyShell

# Open
sh multi.sh open shell MyShell

# Delete
sh multi.sh delete shell MyShell
```

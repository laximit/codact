# Codact

Codact is a script made for programmers that use Linux/Mac/WSL, that aims to rise your productivity by creating, opening or deleting projects quickly using the command line.

At the moment the script contains 7 languages, more could be added if needed.

- [Install](#install)
- [Actions](#actions)
  - [Open](#open)
  - [Create](#create)
  - [Delete](#delete)
  - [Edit](#edit)
- [Items](#items)
  - [Languages](#languages)
  - [Editors](#editors)
- [Support](#support)

## Install

You can install the script so you can call it by just typing `codact` in your terminal.

Using wget:

```sh
wget -O - https://raw.githubusercontent.com/laximit/codact/master/install.sh | bash
```

Using curl:

```sh
bash <(curl -s https://raw.githubusercontent.com/laximit/codact/master/install.sh)
```

## Actions

### *Open*

```sh
# Choose the 'Open Project' option

Choose an option:
1. Open Project   <
2. Create Project
3. Delete Project
4. Edit Config
5. Exit

# Then a list of the created projects on your chosen folder.
# Type the name of the project to open.

[?] Which project would you like to open?
-----
(projects will be shown here) 
-----

# Then your project will be open in the chosen editor.

```

### Edit

You can use Edit action to access the script and edit anything you want:

```sh
multicode edit [editor]

# Example:
multicode edit vim # Open with Vim Text Editor
multicode edit code # Open with VSCode
```

At first you'll need to edit the file to add your code workspace, just enter the file and edit the variable `WORKSPACE` at the start of the script.

```sh
# Remember that your script starts from $HOME folder,
# so if you want to add a directory outside of it,
# insert all the path for the directory

# Example:
WORKSPACE='/usr/workspace'
# Directory: /usr/workspace

# If your workspace is located on your home directory,
# then you don't need the full path

# Example:
WORKSPACE='workspace'
# Directory: /home/[current user]/workspace
```

### Create

Use this action to create a new project, you need to use the following syntax:

```sh
multicode create [language] [name] [editor]

# Example
multicode create shell MyScript code
# This will create the following directory:
# [your workspace]/Shell/MyScript
# Then VSCode will open
```

### Open

This action is used to open your project, it uses a similar syntax as the Create action:

```sh
multicode open [language] [name] [editor]

# Example
multicode open shell MyScript vim
# This will open the following directory:
# [your workspace]/Shell/MyScript
# Then Vim will open
```

### Delete

This action is used to delete a chosen object, use the following syntax:

```sh
multicode delete [language] [name]

# Example
multicode delete shell MyScript
# Then it'll ask for a confirmation, if you answer 'y' the project will be deleted
```

## Help

This action is used to show you some info if you need, use the following syntax:

```sh
multicode help
```

## Items

### Languages

The current avaliable languages are:

- Python
- C#
- Html
- Shell
- React
- Java

### Editors

The current avaliable text editors are:

- Vim
- Neovim
- VSCode

## Support

If you want a new Editor/Language added to the script, want any new feature, want to report a bug or just have a question about the script, open a [Issue](https://github.com/laximit/multi/issues) on Github or message me on [Reddit](https://www.reddit.com/user/Laximit) for a quick response.

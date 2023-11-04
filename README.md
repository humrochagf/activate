# Activate oh-my-zsh plugin for Python

Utility command to activate local Python venv located at the same folder of the code project.

## Installation

Clone this repository into the `custom/plugins` folder of your oh-my-zsh installation:

```shell
git clone git@github.com:humrochagf/activate.git ~/.oh-my-zsh/custom/plugins/activate
```

Then refresh the shell with:

```shell
omz reload
```

## Usage

This plugin adds the command `activate` that will look for common venv folders in the root of your code project and activate it without you having to search manually for it.

```shell
cd my_code_project
activate
```

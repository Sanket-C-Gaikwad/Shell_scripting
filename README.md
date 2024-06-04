# 1. Bash Shell

**Bash (Bourne Again SHell)** is a command-line interpreter and scripting language for Unix-based operating systems. It is the default shell on many Linux distributions and macOS. Here are key points about Bash:

## Features

- **Command Execution**: Run commands and scripts directly from the terminal.
- **Scripting**: Automate tasks with scripts written in Bash.
- **Environment Control**: Manage environment variables and configurations.
- **Job Control**: Handle background and foreground processes.
- **Command History**: Access a history of previously executed commands.


# 2. Shell Variables

Shell variables are used to store data and manage environment settings in the Bash shell. They can be local to the current session or script, or they can be environment variables accessible by child processes. Here are key points about shell variables:

## Types of Shell Variables

- **Local Variables**: Defined in the shell and available only in the current session or script.
  ```bash
  MY_VAR="Hello, World!"
  echo $MY_VAR


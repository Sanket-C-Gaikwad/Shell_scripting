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

- **Environment Variables**: Environment variables are inherited by all child processes of the shell. They are often used to store system-wide values.
  ```bash
  # Export an environment variable
  export PATH=$PATH:/usr/local/bin
  # Access the environment variable
  echo $PATH

  #!/bin/bash
  MY_VAR="Hello"
  export MY_VAR
  ./child_script.sh  # This script will have access to MY_VAR

- **Positional Parameters**: Positional parameters hold the arguments passed to a script or function.
  ```bash
  #!bin/bash
  #accessing the positional parameters
  echo "First parameter: $1"
  echo "First parameter: $2"
  

  ./script.sh par1 par2
  ```

- **Arrays**: Bash also supports arrays.
  ```bash
  # Define an array
  my_array=(value1 value2 value3)
  # Access array elements
  echo ${my_array[0]}
  echo ${my_array[1]}
  echo ${my_array[@]}  # All elements
  ```

- **Unsetting Variables**: Variables can be unset to remove their value.
  ```bash
  # Unset a variable
  unset GREETING
  echo $GREETING  # No output, as the variable is unset
  ```


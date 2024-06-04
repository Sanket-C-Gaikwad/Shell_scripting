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

# 3. PATH, Aliases, and fork()


- **PATH**: 
The PATH variable in Bash is an environment variable that specifies the directories in which the shell looks for executable files. When you type a command, the shell searches through these directories to find the corresponding executable.  

```bash
#!/bin/bash

# Add a new directory to PATH
export PATH=$PATH:/usr/local/myprogram/bin

# Verify the addition
echo $PATH

# Now you can run executables from /usr/local/myprogram/bin without specifying the full path
myprogram
```

- **Aliases**: 
Aliases in Bash are shortcuts or alternative names for commands or series of commands. They simplify and speed up command-line tasks by allowing users to create custom commands.

```bash
#how
alias ll='ls -la'

#View all aliases
alias

#Remove aliases
unalias ll

#Persistent Aliases: Add aliases to your .bashrc or .bash_profile file to make them persistent across sessions.
echo "alias ll='ls -la'" >> ~/.bashrc
source ~/.bashrc

```

- **fork()**: 
Process Creation:
- `fork()` creates a new process by duplicating the existing process.
- The child process receives a unique process ID (PID).

Return Values:
- `fork()` returns zero to the child process.
- `fork()` returns the child’s PID to the parent process.
- Returns a negative value if the process creation fails.

Execution:
- Both parent and child processes run concurrently.
- Each process executes the subsequent instructions independently.

- **File Descriptors**: 
| Streams/ File Descriptor | Represents      | Numeric Notation | Symbolic Notation | To Overwrite | To Append | Example                   |
|--------------------------|-----------------|------------------|-------------------|--------------|-----------|---------------------------|
| file descriptor 0 (or fd[0]) | standard input  | stdin (0)         | 0<                | <            | <<        | Terminal, Keyboard, File  |
| file descriptor 1 (or fd[1]) | standard output | stdout (1)        | 1>                | >            | >>        | Terminal, File            |
| file descriptor 2 (or fd[2]) | standard error  | stderr (2)        | 2>                | 2>           | 2>>       | Terminal, File            |



# 4.

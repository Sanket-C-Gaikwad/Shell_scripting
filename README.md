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


# 4. Conditions, If statements, Loops

- **IF/ IF ELSE**: 
```bash

#!/bin/bash
NAME="Sanket" #variable declarattion

if [ $NAME = "Sanket" ]; # spacing indentation is important inside the if statement
then
    echo "Welcome Sanket"
fi

#if else
echo "Please enter your user name:"
read NAME

if [ $NAME = "Sanket" ]; # spacing indentation is important inside the if statement
then
    echo "Welcome Sanket"
else
    echo "Invalid user name, Please register an account"
fi
```

- **Test Script**:

```bash
help test #conditonal shortcuts

#!/bin/bash

if [ -d /user/sanket/wordlist ]; # -d is for directory use: help test
then
    echo "The directory exists"
else
    echo "The dir is missing"
fi
```

- **For loops**:

```bash
readfile 
4forloop.sh

penetration testing
5pingsweep.sh

```


# 5. Grep

- The grep command in Unix/Linux is used to search for specific patterns within files. Here’s a detailed breakdown of its options and examples.
 
```bash
grep [OPTIONS] PATTERN [FILE...]
```
| Option  | Description                                     | Example                                |
|---------|-------------------------------------------------|----------------------------------------|
| `-i`    | Ignore case distinctions                        | `grep -i "error" logfile.txt`          |
| `-r`    | Recursively search directories                  | `grep -r "error" /var/log/`            |
| `-v`    | Invert match (select non-matching lines)        | `grep -v "error" logfile.txt`          |
| `-w`    | Match whole words only                          | `grep -w "error" logfile.txt`          |
| `-n`    | Show line numbers with output                   | `grep -n "error" logfile.txt`          |
| `-c`    | Count the number of matching lines              | `grep -c "error" logfile.txt`          |
| `-l`    | List filenames containing the match             | `grep -l "error" *.log`                |
| `-A NUM`| Print NUM lines of trailing context after matches| `grep -A 3 "error" logfile.txt`        |
| `-B NUM`| Print NUM lines of leading context before matches| `grep -B 3 "error" logfile.txt`        |
| `-C NUM`| Print NUM lines of context around matches       | `grep -C 3 "error" logfile.txt`        |

# 6. awk

- awk is a powerful text-processing language and command-line tool used in Unix/Linux environments. It is designed for pattern scanning and processing, allowing users to perform complex text manipulations and data extraction efficiently.

| Option            | Description                                                                 | Example                                          |
|-------------------|-----------------------------------------------------------------------------|--------------------------------------------------|
| `-F`              | Specify a field separator                                                   | `awk -F, '{ print $1 }' file.csv`                |
| `-v`              | Define a variable before processing                                         | `awk -v var=1 '{ print $1 + var }' file`         |
| `-f`              | Read the `awk` program from a file                                          | `awk -f script.awk file`                         |
| `-b`              | Use buffered output                                                         | `awk -b '{ print $1 }' file`                     |
| `-W`              | Supply options specific to `gawk`                                           | `awk -W version`                                 |
| `--re-interval`   | Enable interval expressions in regular expressions                          | `awk --re-interval '{ print $1 }' file`          |
| `BEGIN {}`        | Block of code to execute before processing input                            | `awk 'BEGIN { print "Header" } { print $1 }' file`|
| `END {}`          | Block of code to execute after processing all input                         | `awk '{ print $1 } END { print "Footer" }' file` |
| `NR`              | Built-in variable that holds the current record number                      | `awk '{ print NR, $1 }' file`                    |
| `NF`              | Built-in variable that holds the number of fields in the current record     | `awk '{ print NF, $0 }' file`                    |
| `$0`              | Represents the entire current record                                        | `awk '{ print $0 }' file`                        |
| `$1, $2, ...`     | Represents the first, second, ... fields in the current record              | `awk '{ print $1, $2 }' file`                    |
| `tolower()`       | Function to convert text to lowercase                                       | `awk '{ print tolower($0) }' file`               |
| `toupper()`       | Function to convert text to uppercase                                       | `awk '{ print toupper($0) }' file`               |
| `length()`        | Function to get the length of the string                                    | `awk '{ print length($0) }' file`                |
| `substr()`        | Function to extract a substring                                             | `awk '{ print substr($0, 1, 5) }' file`          |
| `match()`         | Function to match a regex pattern                                           | `awk '{ if (match($0, /regex/)) print $0 }' file`|
| `print`           | Print formatted output                                                      | `awk '{ print $1, $2 }' file`                    |
| `printf`          | Print formatted output with specific format                                 | `awk '{ printf "%-10s %-10s\n", $1, $2 }' file`  |


# 7. sed

- sed, short for Stream Editor, is a powerful Unix utility for parsing and transforming text. It reads input line-by-line and applies specified text modifications before outputting the result.

- Key Features
Text Substitution: Replace specific patterns in text.
Text Deletion: Remove specific lines or patterns.
Text Insertion: Add new text lines at specific locations.
Text Transformation: Modify text based on regex patterns.
Global sed

| Key Feature          | Description                                      | Example                                             |
|----------------------|--------------------------------------------------|-----------------------------------------------------|
| Text Substitution    | Replace specific patterns in text                | `sed 's/foo/bar/' file.txt`                         |
| Global Substitution  | Replace all occurrences of a specific pattern    | `sed 's/foo/bar/g' file.txt`                        |
| Text Deletion        | Remove specific lines or patterns                | `sed '/pattern/d' file.txt`                         |
| Text Insertion       | Add new text lines at specific locations 2i second line         | `sed '2i\This is an inserted line' file.txt`        |
| Text Transformation  | Modify text based on regex patterns              | `sed 's/\(.*\)/\U\1/' file.txt` (uppercase conversion) |

- Test Transformation

| Transformation                | Description                                    | Example Command                                    |
|-------------------------------|------------------------------------------------|----------------------------------------------------|
| Uppercase Conversion          | Convert text to uppercase                      | `sed 's/.*/\U&/' file.txt`                          |
| Lowercase Conversion          | Convert text to lowercase                      | `sed 's/.*/\L&/' file.txt`                          |
| Capitalize First Letter       | Capitalize the first letter of each word       | `sed 's/\b\(.\)/\u\1/g' file.txt`                   |
| Replace Spaces with Underscore| Replace all spaces with underscores            | `sed 's/ /_/g' file.txt`                            |
| Remove Leading Whitespace     | Remove leading whitespace from each line       | `sed 's/^[ \t]*//' file.txt`                        |
| Remove Trailing Whitespace    | Remove trailing whitespace from each line      | `sed 's/[ \t]*$//' file.txt`                        |
| Add Line Numbers              | Add line numbers to each line                  | `sed = file.txt | sed 'N;s/\n/: /'`                 |
| Double Space Lines            | Insert a blank line after each line            | `sed G file.txt`                                    |
| Remove Blank Lines            | Delete all blank lines                         | `sed '/^$/d' file.txt`                              |
| Surround with Quotes          | Surround each line with double quotes          | `sed 's/.*/"&"/' file.txt`                          |



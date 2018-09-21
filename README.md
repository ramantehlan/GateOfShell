# GateOfShell 

GateOfShell is a Shell Scripting / Bourne Shell Programming Tutorial for Beginners. Taught with a perfect mix of theory and examples, which will help people understand and learn some of the basics of it.

# Index

1. [Introduction](#introduction)
2. [Audience](#audience)
3. [Environment](#environment)
4. [Gates `Tutorial`](#gates-getting-started)
	1. [Gate 1](#gate-1-basics)
	2. [Gate 2]()
	3. [Gate 3]()


## Introduction

[Bourne Shell](https://en.wikipedia.org/wiki/Bourne_shell) was written by [Stephen Bourne](https://en.wikipedia.org/wiki/Stephen_R._Bourne), which was the default shell for Version 7 Unix in 1979. We will only cover Bourne Shell `sh` `1977` and Bourne Again Shell `1989` There are other shells aswell, like:

- [Korn Shell](https://en.wikipedia.org/wiki/KornShell) `ksh` `1983`
- [C Shell](https://en.wikipedia.org/wiki/C_shell) `csh` `1978`
- [Z Shell](https://en.wikipedia.org/wiki/Z_shell) `zsh` `1990`
- [Friendly Interactive Shell](https://en.wikipedia.org/wiki/Friendly_interactive_shell) `fish` `2005` 
- [Duplex Multi-Environment Real-Time Shell](https://en.wikipedia.org/wiki/Multi-Environment_Real-Time) `DMERT`
- [Almquist Shell](https://en.wikipedia.org/wiki/Almquist_shell) `ash` `1989`
- [Run Commands](https://en.wikipedia.org/wiki/Rc) `rc` `1989`
- [PWB Shell](https://en.wikipedia.org/wiki/PWB_shell) `1975–77`

## Audience 

You are expected to have some prior experience, following are some prerequisites: 

- Programming Exposure.
- Familiarity with Unix/Linux shell.
- Basic Understanding of Unix Operating System.

## Environment 

To work with a shell script you need to have following prerequisites:

- Bourne Shell (/bin/sh)
- A Text Editor 

## Gates `Tutorial`


### Gate 1: Basics

`1.0.0.sh`
```bash
#!/bin/sh

# Comments start with a hash code 

echo Welcome to GateOfShell # You can even have in-line comments 
```

- `#!/bin/sh` is to tell the location where the script needs to be executed, it is a standard location for a Bourne shell.

- `#` is to make a comment in script. Also note, #! is the only exception. 

- `echo` is a command, running here with three parameters: "Welcome", "to", "GateOfShell". Also note, since we are passing three parameters, it won't count space between them, to add spaces, you must use double quotes.

- To make a script executable, use `chmod 755 1.0.0.sh` or `chmod +x 1.0.0.sh`.

- To execute a script write following command in terminal. 

```console
root@123.332.23.271 ~/GateOfShell $ ./1.0.0.sh
```

### Gate 2: Variables

`2.0.0.sh`
```bash
#!/bin/sh

printMessage="Hello from Bourne";
echo printMessage
```

- Variable name, = and value should not have space between them. This is because after space, shell see everything as a parameter.

- You can't assign multiple values to a variable, so without quote, printMessage won't have have the same value, and it might throw errors.

`2.1.0.sh`
```bash
#!/bin/sh

echo "Hello $name, welcome to the shell!"
echo "Let's start with your name?"
read name
echo "Nice to meet you $name!"
```

- `read` command is used to set a variable by users.

- Notice `$name` wasn't declared before using it in first echo, but used it won't throw a error, since you don't need to declare a variable before using it in Bourne Shell.

**Export** 

Variables can be used by other programs/scripts as well, but in order to do that, we must `export` them.

Follow the commands above, and see the different in output this time. It will print `Hello Prince, welcome to the shell!` this time, earlier instead of 'Prince' it was blank, cause we imported the `$name` variable. 

```console
root@123.332.23.271 ~/GateOfShell $ name="Prince"
root@123.332.23.271 ~/GateOfShell $ export name
root@123.332.23.271 ~/GateOfShell $ ./2.1.0.sh
Hello Prince, welcome to the shell!
Let's start with your name?
Tony Stark
Nice to meet you Tony Stark!
root@123.332.23.271 ~/GateOfShell $ echo $name
Prince
```

**Source**

You will also notice, that once the script ends, the value of `$name` is back to the one we defined, even though we changed it in our script. This is because, once the script ends, its environment also ends, and the chances were only for that environment. Though, interactive shell keeps the value of `$name` variable, while it is still active.

To keep the changes from the shell script, we need to *source* the script, which run the script in our interactive shell, and not create a new environment for our script. `.` [dot] command is used to source a script, by placing it before executing a script. This is the concept behind `dot files`.


```console
root@123.332.23.271 ~/GateOfShell $ . ./2.1.0.sh
Hello Prince, welcome to the shell!
Let's start with your name?
Tony Stark
Nice to meet you Tony Stark!
root@123.332.23.271 teOfShell $ echo $name
Tony Stark
```


**Suffix and Prefix**

To use suffix or prefix with our variable, `${VAR}` syntax is used.


`2.1.1.sh`
```bash
#!/bin/sh


echo "Hello $name, welcome to the shell!"
echo "Let's start with your name?"
read name
echo "Nice to meet you $name! I will create a file for the name './tmp/${name}_data'"
touch "./tmp/${name}_data"
```


### Gate 3: Characters

**Wildcards**

You should be familiar with wildcards if you have even a little programming or Unix experience. Wildcard character `Asterisk (*), Question Mark (?), Exclamation Mark (!) etc` works as a placeholder to represent other characters, like numbers, strings etc.

`3.0.0.sh`
```bash
#!/bin/sh

echo "Using * we will list all the .md files:"
ls *.md
echo "Using * we will echo all files name:"
echo *

```

**Escape Characters**

Escape Character is similar to Wildcards, but they are particularly used for representing the characters, which are significant to the shell, like Double or Single Quotes, Round or Square Brackets etc.

`3.1.0.sh`
```bash
#!/bin/sh

echo "You can write \" or \\ or \$ and so on..."
```

### Gate 4: Loops

Like most programming languages, shell also have loops concept. This helps you to repeat a task n times, 
with out writing it n times. 

**For**


`4.0.0.sh`
```bash
#!/bin/sh

for i in 1 2 3
do 
	echo "Current Number: $i" 
done

echo "-"

for i in This is a loop writing something
do
	echo $i
done

echo "-"

echo "Files list: "
for i in *
do
  echo $i
done
```

In bash, loop can have any value iterating. It can also list current directory, using Wildcards (\*).


## Contribution

Author: [**Raman Tehlan**](https://ramantehlan.github.io/)

Feel free to contribute.

## Resources
- [Shell Scripting](https://en.wikipedia.org/wiki/Shell_script)
- [shellscript.sh](https://www.shellscript.sh/)
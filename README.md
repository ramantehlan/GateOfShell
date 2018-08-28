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

To run a shell script you need to have following prerequisites:

- A Unix/Linux machine. 
- Bourne Shell (/bin/sh)
- A Text Editor 

## Gates `Tutorial`


### Gate 1: Basics

`1.0.0.sh`
```Bash
#!/bin/sh

# Comments start with a hash code 

echo Welcome to GateOfShell # You can even have in-line comments 
```

- `#!/bin/sh` is to tell the location where the script needs to be executed, it is a standard location for a Bourne shell.

- `#` is to make a comment in script. Also note, #! is the only exception. 

- `echo` is a command, running here with three parameters: "Welcome", "to", "GateOfShell". Also note, since we are passing three parameters, it won't count space between them, to add spaces, you must use double quotes.

- To make a script executable, use `chmod 755 1.0.0.sh` or `chmod +x 1.0.0.sh`.

### Gate 2: Variables

`2.0.0.sh`
```Bash
#!/bin/sh

printMessage="Hello from Bourne";
echo printMessage
```

- Variable name, "=" and value should not have space between them. This is because after space, shell see everything as a parameter.

- You can't assign multiple values to a variable, so without quote, printMessage won't have have the same value, and it might throw errors.

`2.1.0.sh`
```Bash
#!/bin/sh


```



### Gate 3: name

## Contribution
    Feel free to contribute.

## Resources
- [Shell Scripting](https://en.wikipedia.org/wiki/Shell_script)
- [shellscript.sh](https://www.shellscript.sh/)
# Linux-Shell

## Overview

This project implements a basic command-line shell for Linux systems. It serves as a learning tool for understanding shell concepts and C programming.

### Features

- Supports core shell commands like `cd`, `echo`, `pwd`, `ls`, `cat`, `date`, `rm`, and `mkdir`.
- Implements robust error handling for invalid commands and arguments.
- Provides clear and informative error messages.

### Building locally

Run `make clean` followed by `make all`.

### Executing cmdline shell

Run `make run`. It would print user name and prsent directory

```txt
USER is: @manvi-agrawal
Dir: /home/manvi-agrawal/Linux-Shell
```

### Examples

```txt
Welcome: @manvi-agrawal 

manvi-agrawal@/home/manvi-agrawal/Linux-Shell : help
List of Commands supported:
Internal commands:
cd
echo
pwd
External commands:
ls (-a, -1)
cat(-n, -E)
date(-u, -R)
rm(-i, -v)
mkdir(-p, -v)

manvi-agrawal@/home/manvi-agrawal/Linux-Shell : ls -a
build  .git  test  .  .gitignore  src  ..  README.md  makefile

manvi-agrawal@/home/manvi-agrawal/Linux-Shell : mkdir -p test/manvi

manvi-agrawal@/home/manvi-agrawal/Linux-Shell : cd test
```

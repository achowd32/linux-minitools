# Linux Minitools
A bundle of mini-tools for use in the Linux command line
## Purpose
To get more familiar with shell scripting, and to learn more about Linux internals. While most of the programs here are short, they demanded knowledge of Linux internals (e.g. process management, package management, etc.) which I did not previously have. These scripts served as a way for me to learn more about these internals, as well as to continue improving my BASH scripting skills.
## Commands
`debown`: give this command a file, and it outputs the package which owns that file (if any). Works on Debian-based distributions.\
`gandalf`: type this command to display ASCII art of Gandalf, and press w/s to make him nod (inspired by the Gandalf epic sax guy meme).\
`ptrace`: give this command a PID to trace its parent processes.\
`ptree`: give this command a PID (or a process name with the -n flag) to display a tree of its children.\

More commands to be added!
## Installation
After cloning or downloading this repo, run `setup_assets.sh` to install assets to the `/usr/share` directory, and run `setup_commands.sh` to install the command scripts to the `/usr/bin` directory. You can then use the commands in your terminal as usual.

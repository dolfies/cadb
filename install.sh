#!/bin/bash
#CADB Installer

if [[ $@ = "local --skip-root-check" ]]; then
    echo "Installing for user $USER in local mode..."
    wget https://github.com/dolfies/cadb/raw/master/cadb
    mkdir ~/.local >/dev/null 2>&1
    mkdir ~/.local/bin >/dev/null 2>&1
    mv cadb ~/.local/bin/
    echo "Done."
    echo "Make sure to add ~/.local/bin to path."
    exit
fi

if [[ $@ = "local" ]]; then
    echo "Installing for user $USER in local mode..."
    if [ `whoami` = 'root' ]; then
      echo "ERROR 1: Run as root using local mode. Please run with system mode or use --skip-root-check flag."
      exit
    fi
    wget https://github.com/dolfies/cadb/raw/master/cadb
    mkdir ~/.local >/dev/null 2>&1
    mkdir ~/.local/bin >/dev/null 2>&1
    mv cadb ~/.local/bin/
    echo "Done."
    echo "Make sure to add ~/.local/bin to path."
    exit
fi
    
if [[ $@ = "system --skip-root-check" ]]; then
    echo "Installing in system mode..."
    if [ `whoami` = 'root' ]; then
      echo "ERROR 2: System mode needs root."
      exit
    fi
    wget https://github.com/dolfies/cadb/raw/master/cadb
    mv cadb /usr/local/bin/
    #Symlinking just in case
    ln -s /usr/local/bin/cadb /usr/bin/cadb
    echo "Done."
    exit
fi

if [[ $@ = "system --skip-root-check" ]]; then
    echo "Installing in system mode..."
    wget https://github.com/dolfies/cadb/raw/master/cadb
    mv cadb /usr/local/bin/
    #Symlinking just in case
    ln -s /usr/local/bin/cadb /usr/bin/cadb
    echo "Done."
    exit
fi
    
if [[ $@ = "system" ]]; then
    echo "Installing in system mode..."
    if [ `whoami` = 'root' ]; then
      echo "ERROR 2: System mode needs root."
      exit
    fi
    wget https://github.com/dolfies/cadb/raw/master/cadb
    mv cadb /usr/local/bin/
    #Symlinking just in case
    ln -s /usr/local/bin/cadb /usr/bin/cadb
    echo "Done."
    exit
fi

if [[ $@ = "--help" ]]; then
    echo "CADB Installer v0.1-alpha"
    echo "Author: Dolfies"
    echo "Support (limited): github.com/dolfies/cadb"
    echo "This installer is currently in an alpha state."
    printf "\n"
    echo "Usage: install.sh mode"
    echo "       install.sh mode {options}"
    printf "\n"
    echo "Modes:"
    echo "system - Installs system-wide. Requires running as root."
    echo "         Options: --skip-root-check - tries to install, even without root"
    echo "local  - Installs for the user it is run as."
    echo "         Options: --skip-root-check - force installs for user installer is run as"
    exit
fi

if [[ $@ = "-?" ]]; then
    echo "CADB Installer v0.1-alpha"
    echo "Author: Dolfies"
    echo "Support (limited): github.com/dolfies/cadb"
    echo "This installer is currently in an alpha state."
    printf "\n"
    echo "Usage: install.sh mode"
    echo "       install.sh mode {options}"
    printf "\n"
    echo "Modes:"
    echo "system - Installs system-wide. Requires running as root."
    echo "         Options: --skip-root-check - tries to install, even without root"
    echo "local  - Installs for the user it is run as."
    echo "         Options: --skip-root-check - force installs for user installer is run as"
    exit
fi

echo "CADB Installer v0.1-alpha"
echo "Author: Dolfies"
echo "Support (limited): github.com/dolfies/cadb"
echo "This installer is currently in an alpha state."
printf "\n"
echo "Usage: install.sh mode"
echo "       install.sh mode {options}"
printf "\n"
echo "Modes:"
echo "system - Installs system-wide. Requires running as root."
echo "         Options: --skip-root-check - tries to install, even without root"
echo "local  - Installs for the user it is run as."
echo "         Options: --skip-root-check - force installs for user installer is run as"
exit

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# $PATH
## Single user installs
PATH="$PATH:$(ruby -e "print Gem.user_dir")/bin"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/Coding/Go/bin"
PATH="$PATH:$HOME/bin:$HOME/.local/bin"

## Multi user installs
PATH="$PATH:/opt/google/go/bin"
PATH="$PATH:/opt/gradle/bin"

export PATH

# Variables
export EDITOR="$VISUAL"
export GOPATH="$HOME/Coding/Go"
export QT_QPA_PLATFORMTHEME=gtk2
export RUST_BACKTRACE=1
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export VISUAL=nvim

# https://github.com/electron/electron/issues/8455
export ELECTRON_FORCE_WINDOW_MENU_BAR=1

# ssh-agent
[ -z "$SSH_AUTH_SOCK" ] && [ -z "$SSH_AGENT_PID" ] && eval $(ssh-agent)

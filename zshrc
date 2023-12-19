#
# LUO YU
# CREATE AT 2013-09-10
#
# PATH TO OH-MY-ZSH INSTALLATION.
export ZSH=~/.oh-my-zsh

UNAME_MACHINE="$(uname -m)"

ISLINUX="notyet"
#if [[ $(command -v apt-get) || $(command -v yum) || $(command -v pacman) ]] && [[ $(command -v systemctl) ]]; then
if [[ $OSTYPE == "linux-gnu" ]]; then
  ISLINUX="yes"
fi

# SET NAME OF THE THEME TO LOAD.
# LOOK IN ~/.oh-my-zsh/themes/
# "robbyrussell" "random" "agnoster"
if [[ "$OSTYPE" == "darwin"* ]]; then
  ZSH_THEME="agnoster"
else
  if [[ "$ISLINUX" == "yes" ]]; then
	#if [[ $(command -v apt-get) || $(command -v yum) || $(command -v pacman) ]] && [[ $(command -v systemctl) ]]; then
    ZSH_THEME="agnoster"
  fi
  USE_POWERLINE="true"
  if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
  fi
  if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
  fi
fi

# UNCOMMENT THE FOLLOWING LINE TO USE CASE-SENSITIVE COMPLETION.
# CASE_SENSITIVE="true"

# UNCOMMENT THE FOLLOWING LINE TO USE HYPHEN-INSENSITIVE COMPLETION. 
# CASE SENSITIVE COMPLETION MUST BE OFF. _ AND - WILL BE INTERCHANGEABLE.
# HYPHEN_INSENSITIVE="true"

# UNCOMMENT THE FOLLOWING LINE TO DISABLE BI-WEEKLY AUTO-UPDATE CHECKS.
# DISABLE_AUTO_UPDATE="true"

# UNCOMMENT THE FOLLOWING LINE TO CHANGE HOW OFTEN TO AUTO-UPDATE (IN DAYS).
# export UPDATE_ZSH_DAYS=13

# UNCOMMENT THE FOLLOWING LINE TO DISABLE COLORS IN LS.
# DISABLE_LS_COLORS="true"

# UNCOMMENT THE FOLLOWING LINE TO DISABLE AUTO-SETTING TERMINAL TITLE.
# DISABLE_AUTO_TITLE="true"

# UNCOMMENT THE FOLLOWING LINE TO ENABLE COMMAND AUTO-CORRECTION.
# ENABLE_CORRECTION="true"

# UNCOMMENT THE FOLLOWING LINE TO DISPLAY RED DOTS WHILST WAITING FOR COMPLETION.
# COMPLETION_WAITING_DOTS="true"

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO DISABLE MARKING UNTRACKED FILES
# UNDER VCS AS DIRTY. THIS MAKES REPOSITORY STATUS CHECK FOR LARGE REPOSITORIES
# MUCH, MUCH FASTER.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO CHANGE THE COMMAND EXECUTION TIME
# STAMP SHOWN IN THE HISTORY COMMAND OUTPUT.
# THE OPTIONAL THREE FORMATS: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# WOULD YOU LIKE TO USE ANOTHER CUSTOM FOLDER THAN $ZSH/CUSTOM?
# ZSH_CUSTOM=/path/to/new-custom-folder

# WHICH PLUGINS WOULD YOU LIKE TO LOAD? (PLUGINS CAN BE FOUND IN ~/.oh-my-zsh/plugins/*)
# CUSTOM PLUGINS MAY BE ADDED TO ~/.oh-my-zsh/custom/plugins/
# EXAMPLE FORMAT: plugins=(rails git textmate ruby lighthouse)
# ADD WISELY, AS TOO MANY PLUGINS SLOW DOWN SHELL STARTUP.

plugins=(git)

# USER CONFIGURATION

# export GIT_HOME=/usr/local/Cellar/git/2.9.2/bin

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH:$GIT_HOME"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# YOU MAY NEED TO MANUALLY SET YOUR LANGUAGE ENVIRONMENT
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# PREFERRED EDITOR FOR LOCAL AND REMOTE SESSIONS
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

hp() {
  if [ "$1" = "enable" ]
  then
    PORT="20172"
    if [ -n "$2" ]
    then
      PORT="$2"
    fi

    export HTTP_PROXY=http://127.0.0.1:$PORT
    export HTTPS_PROXY=http://127.0.0.1:$PORT
  else # TO DISABLE
    export HTTP_PROXY=""
    export HTTPS_PROXY=""
  fi
}

hpclashx() {
  if [ "$1" = "enable" ]
  then
    export HTTPS_PROXY=http://127.0.0.1:7890
    export HTTP_PROXY=http://127.0.0.1:7890
#    export ALL_PROXY=socks5://127.0.0.1:7890
  else
    export HTTPS_PROXY=""
    export HTTP_PROXY=""
#    export ALL_PROXY=""
  fi
}

# COMPILATION FLAGS
# export ARCHFLAGS="-arch x86_64"

# SSH
export SSH_KEY_PATH="~/.ssh/dsa_id"

# SET PERSONAL ALIASES, OVERRIDING THOSE PROVIDED BY OH-MY-ZSH LIBS,
# PLUGINS, AND THEMES. ALIASES CAN BE PLACED HERE, THOUGH OH-MY-ZSH
# USERS ARE ENCOURAGED TO DEFINE ALIASES WITHIN THE 'ZSH_CUSTOM' FOLDER.
# FOR A FULL LIST OF ACTIVE ALIASES, RUN `alias`.
#
# EXAMPLE ALIASES

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias eztarz="tar -czf"

alias gitpush="echo '\n======= GIT PUSH DEFAULT REMOTE >>>>>>>' && git push --verbose && echo '' && echo '======= GIT GC >>>>>>>' && git gc"
alias gitpusht="echo '\n======= GIT PUSH TAGS >>>>>>>' && git push --tags && echo '\n \n'"
alias gitpull="echo '\n======= GIT PULL DEFAULT REMOTE >>>>>>>' && git pull --verbose && echo '' && echo '======= GIT GC >>>>>>>' && git gc"
alias gitrebase="echo '\n======= GIT PULL REBASE DEFAULT REMOTE >>>>>>>' && git pull --rebase && echo ''"
alias gitpushall="echo '\n======= GIT PUSH ALL REMOTES >>>>>>>' && git remote | xargs -L1 git push --all && echo '' && echo '======= GIT GC >>>>>>>' && git gc"
alias gitcomas="echo '\n======= GIT CO MASTER >>>>>>>' && git checkout master"
alias gitmgmas="echo '\n======= GIT MERGE MASTER >>>>>>' && git merge master"

alias ssha="ssh -o ServerAliveInterval=59 "

alias dimosizes="du -shx * | sort -rh | head -10"

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias openws="open *.xcworkspace"
  alias openews="open Example/*.xcworkspace"
  alias openallws="open **/*.xcworkspace"
  alias openpj="open *.xcodeproj"
  alias podinst="echo '\n======= POD INSTALL >>>>>>>' && pod install"
  alias podinste="echo '\n======= POD INSTALL >>>>>>>' && pod install --project-directory=Example"
  alias podreins="echo '\n======= POD re-INSTALL >>>>>>>' && rm Podfile.lock && pod install"
  alias podinstv="echo '\n======= POD INSTALL VERBOSE >>>>>>>' && pod install --verbose"
fi

if [[ "$ISLINUX" == "yes" ]]; then
  alias pacsyu="sudo pacman -Syu"
  alias dockers="sudo docker "
  alias dockersal="sudo docker ps -a"
fi

alias ping4="ping -t 4 "

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# flutter
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/Users/Shared/Developer/flutter/bin:$PATH"
elif [[ "$ISLINUX" == "yes" ]]; then
  export PATH="/home/blodely/flutter/bin:$PATH"
fi

# zsh-plugin syntax
# brew install zsh-syntax-highlighting
if [[ "$OSTYPE" == "darwin"* ]]; then
  if [[ "${UNAME_MACHINE}" == "arm64" ]]; then # apple silicon
    # zsh-plugin syntax
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  else
    # zsh-plugin syntax
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fi
fi

# vscode command line
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH=":$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi

# env for Homebrew
if [[ "$OSTYPE" == "darwin"* ]]; then
  if [[ "${UNAME_MACHINE}" == "arm64" ]]; then
    export PATH="/opt/homebrew/opt/ruby/bin:$PATH" # Ruby
	export JAVA_HOME="/opt/homebrew/opt/openjdk@17" #Java17
    export PATH="$JAVA_HOME/bin:$PATH" # OpenJDK@17
	# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH" # Java11
	eval $(/opt/homebrew/bin/brew shellenv) # AppleSilicon
  else
    export PATH="/usr/local/opt/ruby/bin:$PATH" # Ruby
  fi
fi


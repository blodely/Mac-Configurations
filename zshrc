#
# LUO YU
# CREATE AT 2013-09-10
#
# PATH TO OH-MY-ZSH INSTALLATION.
export ZSH=~/.oh-my-zsh

# SET NAME OF THE THEME TO LOAD.
# LOOK IN ~/.oh-my-zsh/themes/
# "robbyrussell" "random"
ZSH_THEME="agnoster"

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

plugins=(git zsh-syntax-highlighting)

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

alias openws="open *.xcworkspace"

alias gitpush="echo '\n======= GIT PUSH DEFAULT REMOTE >>>>>>>' && git push --verbose && echo '======= GIT GC >>>>>>>' && git gc"
alias gitpull="echo '\n======= GIT PULL DEFAULT REMOTE >>>>>>>' && git pull --verbose && echo '======= GIT GC >>>>>>>' && git gc"
alias gitpushall="echo '\n======= GIT PUSH ALL REMOTES >>>>>>>' && git remote | xargs -L1 git push --all && echo '======= GIT GC >>>>>>>' && git gc"
alias gitcomas="echo '\n======= GIT CO MASTER >>>>>>>' && git checkout master"
alias gitmgmas="echo '\n======= GIT MERGE MASTER >>>>>>' && git merge master"

alias podspecupd="echo '\n======= UPDATE COCOAPODS REPOS BY GIT PULL >>>>>>>' && cd ~/.cocoapods/repos/master && git pull --verbose && echo '======= GIT GC >>>>>>>' && git gc && cd -"
alias podinst="echo '\n======= POD INSTALL VERBOSE >>>>>>>' && pod install"
alias podreinst="echo '\n======= POD INSTALL VERBOSE >>>>>>>' && rm Podfile.lock && pod install"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kafeitu" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git



z

dash
zoxide
command-not-found
colored-man-pages
colorize
conda
conda-env
docker
docker-compose
fancy-ctrl-z
flutter
github
golang
kitty
brew
mise
thefuck
mosh
ng
node 
nodenv 
npm
react-native
ruby
python
tldr
tmux
themes
thor
toolbox
virtualenv
virtualenvwrapper
zsh-navigation-tools
zsh-interactive-cd
aliases
autojump
autoenv

vscode
fzf
eza
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# zsh-completions
if type brew &>/dev/null;then
   FPTH=$(brew --prefix)/share/zsh-completions:$FPATH
    
   autoload -Uz compinit
   compinit
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconf="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.bashrc

alias mysql=/usr/local/mysql/bin/mysql
alias ls='eza -aG --group-directories-first --icons --color=always --sort name'
alias vim='nvim'
alias vi='nvim'
alias ra='TERM=xterm-256color ranger'
alias raj='TERM=xterm-256color ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias lt="eza -aT --group-directories-first --icons --color=always --sort name --depth 1"
alias reload="source ~/.zshrc"
alias cl="clear"
alias c='clear'
alias kconf='nvim ~/.config/kitty/kitty.conf'
# ranger 配置
export RANGER_LOAD_DEFAULT_RC=FALSE
# 使用,补全历史记录
bindkey ',' autosuggest-accept


# vi-mode 使用nvim作为默认打开工具
EDITOR=nvim 
export EDITOR

bindkey '^h'  backward-char         #control+h：向左移动一个单词
bindkey '^l'  forward-char          #control+l：向右移动一个单词
bindkey '^k'  up-line-or-history    #control+k：向上翻看历史记录
bindkey '^j'  down-line-or-history  #control+j：向下翻看历史记录


export FZF_DEFAULT_OPTS=" \
--height 80% \
--reverse \
--border \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# starship theme
#eval "$(starship init zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

GOPATH=/home/nrd/go

PATH=/home/nrd/Documents/python:/home/nrd/.local/share/mise/installs/elixir/1.18.0-otp-27/bin:/home/nrd/.local/share/mise/installs/elixir/1.18.0-otp-27/.mix/escripts:/home/nrd/.local/share/mise/installs/erlang/27.2/bin:/home/nrd/.local/share/mise/installs/go/1.23.4/bin:/home/nrd/.local/share/mise/installs/java/23.0.1/bin:/home/nrd/.local/share/mise/installs/node/22.12.0/bin:/home/nrd/.local/share/mise/installs/python/3.13.1/bin:/home/nrd/.local/share/mise/installs/ruby/3.3.6/bin:/home/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/home/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/home/nrd/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin

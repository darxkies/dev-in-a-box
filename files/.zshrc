export TERM="xterm-256color"
export LANG=en_US.UTF-8
export LC_ALL=""
export ZSH="/root/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load background_jobs history time)


POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{white}%F{black} \uf155 %f%F{green}%k\ue0b0%f "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{245} \ue0b1 %F{231}"

POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='031' 
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='231' 
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='240' 
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='231' 
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='240' 
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='231' 
POWERLEVEL9K_DIR_HOME_BACKGROUND='240' 
POWERLEVEL9K_DIR_HOME_FOREGROUND='231' 
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='240' 
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='231' 
POWERLEVEL9K_DIR_ETC_SUBFOLDER_BACKGROUND='240' 
POWERLEVEL9K_DIR_ETC_SUBFOLDER_FOREGROUND='231' 
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='196' #red
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='226' #yellow

POWERLEVEL9K_CONTEXT_TEMPLATE="%m"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

ENABLE_CORRECTION="true"

plugins=(
  git
  dotenv
  tmux
  tig
  sudo
  helm
  colorize
  command-not-found
  common-aliases
  debian
  git-prompt
  go
  ubuntu
  fzf
)

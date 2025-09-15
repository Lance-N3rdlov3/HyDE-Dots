# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added a config file for you to customize HyDE before loading zshrc
# Edit $ZDOTDIR/.user.zsh to customize HyDE before loading zshrc

#  Plugins 
# oh-my-zsh plugins are loaded  in $ZDOTDIR/.user.zsh file, see the file for more information

#  Aliases 
# Override aliases here in '$ZDOTDIR/.zshrc' (already set in .zshenv)
alias exa='eza'
alias cd='z'
# # Helpful aliases
alias c='clear'                                                        # clear terminal
# alias l='eza -lh --icons=auto'                                         # long list
# alias ls='eza -1 --icons=auto'                                         # short list
# alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
# alias ld='eza -lhD --icons=auto'                                       # long list dirs
# alias lt='eza --icons=auto --tree'                                     # list folder as tree
 alias un='$aurhelper -Rns'                                             # uninstall package
 alias up='$aurhelper -Syu'                                             # update system/package/aur
 alias pl='$aurhelper -Qs'                                              # list installed package
 alias pa='$aurhelper -Ss'                                              # list available package
 alias pc='$aurhelper -Sc'                                              # remove unused cache
 alias po='$ajurhelper -Qtdq | $aurhelper -Rns -'                        # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
 alias vc='code'                                                        # gui code editor
 alias fastfetch='fastfetch --logo-type kitty'

# # Directory navigation shortcuts
 alias ..='cd ..'
 alias ...='cd ../..'
 alias .3='cd ../../..'
 alias .4='cd ../../../..'
 alias .5='cd ../../../../..'

# # Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'
# Replace ls with exa
alias ls='exa -aG --color=always --group-directories-first --icons --sort type' # preferred listing
 
alias la='exa -aG --color=always --group-directories-first --icons'  # all fils and dirs
alias ll='exa -lG --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons --sort name' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Replace some more things with better alternatives
alias cat='bat --style header --style snip --style changes --style numbers --style grid --style changes --style rule --color always'
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

# Common use
#alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias upd='sudo pacman -Syyu --noconfirm'
#alias ..='cd ..'
#alias ...='cd ../..'
#alias ....='cd ../../..'
#alias .....='cd ../../../..'
#alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='ripgrep --color=auto'
alias fgrep='ripgrep -F --color=auto'
alias egrep='ripgrep -E --color=auto'
alias hw='hwinfo --short'                          # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias ip='ip -color'

# Get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Help people new to Arch
alias apt='man pacman'
alias apt-get='man pacman'
alias please='sudo'
alias tb='nc termbin.com 9999'
alias helpme='cht.sh --shell'
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Load Mcfly
export MCFLY_FUZZY=true
export MCFLY_RESULTS=20
export MCFLY_INTERFACE_VIEW=BOTTOM
export MCFLY_RESULTS_SORT=LAST_RUN
eval "$(mcfly init zsh)"

## Run neofetch
#neofetch
#
export PATH=$HOME/.local/bin:/usr/bin:/usr/share/:/usr/state:/usr/local/bin:/bin:/root/.local/bin:$HOME/bin:$HOME/.var:$HOME/.bin:$HOME/go/bin:$HOME/.pkgx/bin:$PATH
#
#  This is your file 
# Add your configurations here
# export EDITOR=nvim
export EDITOR=code

# unset -f command_not_found_handler # Uncomment to prevent searching for commands not found in package manager

## Plugins section: Enable fish style features
# Use syntax highlighting
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use autosuggestion
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
#source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use fzf
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh

# Arch Linux command-not-found support, you must have package pkgfile installed
# https://wiki.archlinux.org/index.php/Pkgfile#.22Command_not_found.22_hook
[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh

# Advanced command-not-found hook
[[ -e /usr/share/doc/find-the-command/ftc.zsh ]] && source /usr/share/doc/find-the-command/ftc.zsh


## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# Completion.
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zcache

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000


## Keys
# Use emacs key bindings
bindkey -e

# [PageUp] - Up a line of history
if [[ -n "${terminfo[kpp]}" ]]; then
  bindkey -M emacs "${terminfo[kpp]}" up-line-or-history
  bindkey -M viins "${terminfo[kpp]}" up-line-or-history
  bindkey -M vicmd "${terminfo[kpp]}" up-line-or-history
fi
# [PageDown] - Down a line of history
if [[ -n "${terminfo[knp]}" ]]; then
  bindkey -M emacs "${terminfo[knp]}" down-line-or-history
  bindkey -M viins "${terminfo[knp]}" down-line-or-history
  bindkey -M vicmd "${terminfo[knp]}" down-line-or-history
fi

# Start typing + [Up-Arrow] - fuzzy find history forward
if [[ -n "${terminfo[kcuu1]}" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search

  bindkey -M emacs "${terminfo[kcuu1]}" up-line-or-beginning-search
  bindkey -M viins "${terminfo[kcuu1]}" up-line-or-beginning-search
  bindkey -M vicmd "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# Start typing + [Down-Arrow] - fuzzy find history backward
if [[ -n "${terminfo[kcud1]}" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search

  bindkey -M emacs "${terminfo[kcud1]}" down-line-or-beginning-search
  bindkey -M viins "${terminfo[kcud1]}" down-line-or-beginning-search
  bindkey -M vicmd "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# [Home] - Go to beginning of line
if [[ -n "${terminfo[khome]}" ]]; then
  bindkey -M emacs "${terminfo[khome]}" beginning-of-line
  bindkey -M viins "${terminfo[khome]}" beginning-of-line
  bindkey -M vicmd "${terminfo[khome]}" beginning-of-line
fi
# [End] - Go to end of line
if [[ -n "${terminfo[kend]}" ]]; then
  bindkey -M emacs "${terminfo[kend]}"  end-of-line
  bindkey -M viins "${terminfo[kend]}"  end-of-line
  bindkey -M vicmd "${terminfo[kend]}"  end-of-line
fi

# [Shift-Tab] - move through the completion menu backwards
if [[ -n "${terminfo[kcbt]}" ]]; then
  bindkey -M emacs "${terminfo[kcbt]}" reverse-menu-complete
  bindkey -M viins "${terminfo[kcbt]}" reverse-menu-complete
  bindkey -M vicmd "${terminfo[kcbt]}" reverse-menu-complete
fi

# [Backspace] - delete backward
bindkey -M emacs '^?' backward-delete-char
bindkey -M viins '^?' backward-delete-char
bindkey -M vicmd '^?' backward-delete-char
# [Delete] - delete forward
if [[ -n "${terminfo[kdch1]}" ]]; then
  bindkey -M emacs "${terminfo[kdch1]}" delete-char
  bindkey -M viins "${terminfo[kdch1]}" delete-char
  bindkey -M vicmd "${terminfo[kdch1]}" delete-char
else
  bindkey -M emacs "^[[3~" delete-char
  bindkey -M viins "^[[3~" delete-char
  bindkey -M vicmd "^[[3~" delete-char

  bindkey -M emacs "^[3;5~" delete-char
  bindkey -M viins "^[3;5~" delete-char
  bindkey -M vicmd "^[3;5~" delete-char
fi

typeset -g -A key
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# Control Left - go back a word
key[Control-Left]="${terminfo[kLFT5]}"
if [[ -n "${key[Control-Left]}"  ]]; then
	bindkey -M emacs "${key[Control-Left]}"  backward-word
	bindkey -M viins "${key[Control-Left]}"  backward-word
	bindkey -M vicmd "${key[Control-Left]}"  backward-word
fi

# Control Left - go forward a word
key[Control-Right]="${terminfo[kRIT5]}"
if [[ -n "${key[Control-Right]}" ]]; then
	bindkey -M emacs "${key[Control-Right]}" forward-word
	bindkey -M viins "${key[Control-Right]}" forward-word
	bindkey -M vicmd "${key[Control-Right]}" forward-word
fi

# Alt Left - go back a word
key[Alt-Left]="${terminfo[kLFT3]}"
if [[ -n "${key[Alt-Left]}"  ]]; then
	bindkey -M emacs "${key[Alt-Left]}"  backward-word
	bindkey -M viins "${key[Alt-Left]}"  backward-word
	bindkey -M vicmd "${key[Alt-Left]}"  backward-word
fi

# Control Right - go forward a word
key[Alt-Right]="${terminfo[kRIT3]}"
if [[ -n "${key[Alt-Right]}" ]]; then
	bindkey -M emacs "${key[Alt-Right]}" forward-word
	bindkey -M viins "${key[Alt-Right]}" forward-word
	bindkey -M vicmd "${key[Alt-Right]}" forward-word
fi



# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zconf="nvim ~/.config/zsh/.zshrc"
 alias uconf="nvim ~/.config/zsh/user.zsh"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.bashrc

alias mysql=/usr/local/mysql/bin/mysql
#alias ls='eza -a --grid --group-directories-first --sort name --icons=always --color=always'
alias vim='nvim'
alias vi='nvim'
alias ra='TERM=xterm-256color ranger'
alias raj='TERM=xterm-256color ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
#alias lt="eza -aTd --icons=always --color=always --sort Name"
alias reload="source ~/.config/zsh/.zshrc"
alias cl="clear"
#alias c='clear'
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
--color=bg+:#414559,bg:#303446,spinner:#F2D5CF,hl:#E78284 \
--color=fg:#C6D0F5,header:#E78284,info:#CA9EE6,pointer:#F2D5CF \
--color=marker:#BABBF1,fg+:#C6D0F5,prompt:#CA9EE6,hl+:#E78284 \
--color=selected-bg:#51576D \
--color=border:#737994"
#starship theme
eval "$(starship init zsh)"

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
export GOPATH=$HOME/go/
#export GOROOT=$(brew --prefix go)/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

SOFT_SERVE_INITIAL_ADMIN_KEYS=$HOME/.ssh/id_ed25519

# Added by LM Studio CLI (lms)
#export PATH="$PATH:/Users/nrd/.lmstudio/bin"
#export PATH=/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

eval "$(pkgx --quiet dev --shellcode)"  # https://github.com/pkgxdev/dev

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/nrd/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#export PATH=/Applications/*.app/Contents/MacOS/:$PATH
#export PATH=~/.local/share/mise/installs/python/3.12.10/lib/python3.12/site-packages:/Users/nrd/Library/pnpm:/Users/nrd/.nvm/versions/node/v24.4.1/bin:/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.local/share/mise/installs/python/3.12/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin
#export PATH=/Users/nrd/.local/share/mise/installs/python/3.12.10/lib/python3.12/site-packages:/Users/nrd/Library/pnpm:/Users/nrd/.nvm/versions/node/v24.4.1/bin:/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.local/share/mise/installs/python/3.12/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:~/Downloads/GithubApps/quickemu
#export PATH=/Users/nrd/.local/share/mise/installs/python/3.12.10/lib/python3.12/site-packages:/Users/nrd/Library/pnpm:/Users/nrd/.nvm/versions/node/v24.4.1/bin:/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.local/share/mise/installs/python/3.12/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/Downloads/GithubApps/quickemu:~/quickgui
#export PATH=/Users/nrd/.local/share/mise/installs/python/3.12.10/lib/python3.12/site-packages:/Users/nrd/Library/pnpm:/Users/nrd/.nvm/versions/node/v24.4.1/bin:/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.local/share/mise/installs/python/3.12/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/Downloads/GithubApps/quickemu:/Users/nrd/quickgui:/Users/nrd/quickgui/build/macos/build/Products/Release/quickgui.app/Contents/MacOS

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#export PATH=/Users/nrd/.local/share/mise/installs/python/3.12.10/lib/python3.12/site-packages:/Users/nrd/Library/pnpm:/Users/nrd/.nvm/versions/node/v24.4.1/bin:/User/nrd:/opt/homebrew/bin:/opt/homebrew/Cellar/fabric/:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/kitty.app/Contents/MacOS:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/.nvm/versions/node/v22.17.1/lib/node_modules:/Users/nrd/go//bin:/opt/homebrew/opt/go/libexec/bin:/Users/nrd/.local/bin:/Users/nrd/.oh-my-zsh/custom/plugins/git-open:/Users/nrd/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nrd/.local/bin:/Users/nrd/.lmstudio/bin:/Users/nrd/Downloads/GithubApps/quickemu:/Users/nrd/quickgui:/Users/nrd/quickgui/build/macos/build/Products/Release/quickgui.app/Contents/MacOS:/nix/var/nix/profiles/default/bin:/nix/store/0mbhwi1461n52jv98zqd40id44j2v6h4-darwin-rebuild/bin

# Added by Windsurf
# jkk
#export PATH="/Users/nrd/.codeium/windsurf/bin:/opt/metasploit-framework/bin:$PATH"
#export PATH="$(brew --prefix)/opt/python@3.11/libexec/bin:$PATH"
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -lman --color=always'"
BAT_THEME="Catppuccin Frappe"
export EZA_CONFIG_DIR='/Users/nrd/.config/eza'
eval "$(zoxide init zsh)"

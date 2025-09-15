if command -v "eza" &>/dev/null; then
    alias l='eza -lh --icons=auto' \
        #ll='eza -lha --icons=auto --sort=name --group-directories-first' \
        #ld='eza -lhD --icons=auto' \
        #lt='eza --icons=auto --tree'
        ls='eza -aG --color=always --group-directories-first --icons --sort type' # preferred listing
 
        la='eza -aG --color=always --group-directories-first --icons'  # all fils and dirs
        ll='eza -lG --color=always --group-directories-first --icons'  # long format
        lt='eza -aT --color=always --group-directories-first --icons --sort name' # tree listing
        l.='eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles


fi

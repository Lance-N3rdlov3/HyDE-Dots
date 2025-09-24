if command -v "eza" &>/dev/null; then
    alias l='eza -lh --icons=auto' \
        ls='eza -aG --color=always --group-directories-first --icons --sort type' \
        la='eza -aG --color=always --group-directories-first --icons' \
        ll='eza -lG --color=always --group-directories-first --icons' \
        lt='eza -aT --color=always --group-directories-first --icons --sort name' \
        l.='eza -ald --color=always --group-directories-first --icons .*'
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
neofetch
alias icat="kitty +kitten icat"
alias c="clear && neofetch"
alias :q=exit
alias fuckoff="doas poweroff"
alias poweroff="doas poweroff"
alias shutdown="doas poweroff"
alias reboot="doas reboot"
# stuff idk
alias wtr="clear && neofetch && curl -s https://wttr.in"
alias weather="clear && neofetch && curl -s https://wttr.in"
alias ipfetch="ipfetch -ip"
alias clock="tty-clock -tcC 7"
alias spd="speedtest-cli"
alias n="neofetch"
alias sc="watcher -ds"
alias sudo visudo="sudo EDITOR=nvim visudo"
alias cmus="rm /home/squishy/.config/cmus/cache ;cmus"
alias music-dlp="exec ~/Tools/bin/yt-dlp.sh"
# Changing bad basic utils to based utils
alias cat="bat -pp"
alias find="fd -uu"
alias ls="exa"
alias df="duf"
alias du="dust"
alias less="bat --paging=always"
alias hgrep="history | grep"
alias vi=nvim
alias v=nvim
# Tmux stuff
alias tml="tmux list-sessions"
alias tma="tmux attach -t"
alias tmd="tmux detach"
alias tmw="tmux attach -t work"
alias tmm="tmux rename-session -t"
alias tmks="tmux kill-session"
alias tmka="tmux kill-server"
#alias history="history 1| awk '{print $2}' | sort | uniq -c | sort -rn | head -n10"



#alias ip="curl http://ident.me; echo"
export EDITOR=nvim
# Luke's config for the Zoomer Shell
# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
# Enable colors and change prompt:
autoload -U colors && colors    # Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.
# vi mode
bindkey -v
export KEYTIMEOUT=1
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has bee>
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' '^ulfcd\n'
bindkey -s '^a' '^ubc -lq\n'
bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char
# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete
# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

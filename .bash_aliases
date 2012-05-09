# Aliases
alias asdf='loadkeys /usr/share/kbd/keymaps/i386/dvorak/dvorak.map.gz'
#alias aoeu='loadkeys /usr/lib/kbd/keytables/us.map'
alias aoeu='loadkeys /usr/share/kbd/keymaps/i386/qwerty/us.map.gz'
alias fn='find -name'
function files {
  if [ -z "$1" ]; then
    find . -path ./.git -prune -o -print -path ./.hg -prune -o -print | wc -l
  else
    find $1 -type f | wc -l
  fi
}

# Git shortcuts
alias git=hub
alias ga='git add -p'
alias gb='git branch'
alias gs='git status'
alias gc='git commit'
alias gco='git checkout'
alias gg='git log --graph --date-order --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
# pushing
alias gp='git push origin'
alias gpu='git push upstream'
alias gph='git push hub'
alias gpw='git push web'
alias gpd='git push dev'
# pulling
alias gP='git pull'
alias gPu='git pull upstream'
alias gPh='git pull hub'
alias gPw='git pull web'
function gcd {
    git add -u && git commit -am"$1" && git push dev
}
alias gd='git diff'

# Mercurial shortcuts
alias hga='hg add'
alias hgb='hg branch'
alias hgbs='hg branches'
function hgc {
    hg commit -m"$1"
}
alias hgd='hg diff --color=always | less'
alias hgf='hg pull'
alias hgp='hg push'
alias hgs='hg status'
alias hgu='hg update'
alias hgi='hg in'
alias hgo='hg out'
alias hgpu='hg pull && hg update'
alias hgl='hg log --color=always | less'
alias hgg='hg glog --style=compact --color=always | less'
function hgdd {
  hg diff -r default > $HOME/diffs/`hg branch | sed -e 's/\//-/g'`.diff
}

# Directory Movements
alias pd='pushd'
alias Pd='popd'

# Tmux shortcuts
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'


# Ruby Customization
alias irb='irb --simple-prompt'

export HISTIGNORE="fg*"
export HISTFILESIZE=99999
bind '"\C-f": "fg %-\n"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=always'
    alias ack='ack --color'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lc='clear;ls'
alias c='clear'

alias ca='clear;ack'
alias a='ack'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# use ssh instead of su so that I can use public key login :)
alias 'sur'='ssh root@localhost'

# Python cleanup
alias rmpyc='find -name "*.pyc" | xargs -r rm'

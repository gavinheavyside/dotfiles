alias ls="ls -FG"
alias ll="ls -FGal"
alias lart="ls -FGlart"

alias ldd="otool -L"

alias s="tmux -2 attach -d"

alias top=htop

alias irb=pry

alias nodes-matching="knife node list | grep"


alias zcat=gzcat

kick-chef-on () { ssh $* "sudo killall -USR1 chef-client" }

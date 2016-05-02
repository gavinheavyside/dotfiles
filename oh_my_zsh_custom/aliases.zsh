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

purge-from-chef () { aws ec2 describe-instance-status --instance-ids $*; if [[ $? -ne 0 ]]; then knife node delete -y $*; knife client delete -y $*; fi }

hroot=`brew --prefix hadoop`
alias hstart="$hroot/sbin/start-dfs.sh;$hroot/sbin/start-yarn.sh"
alias hstop="$hroot/sbin/stop-yarn.sh;$hroot/sbin/stop-dfs.sh"

alias ls="ls -FG"
alias ll="ls -FGal"
alias lart="ls -FGlart"

alias office="ssh -t office.mydrivesolutions.com ssh typhoon"
alias harrier="ssh -t office.mydrivesolutions.com ssh harrier"
alias citation="ssh -Y 192.168.0.100"
alias typhoon="ssh -Y 192.168.0.104"

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacsclient="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"

alias ldd="otool -L"

alias s="tmux -2 attach -d"

alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias top=htop

alias lazytest="java -cp \"src:test:classes:lib/*:lib/dev/*\" lazytest.watch src test"

alias knife="nocorrect knife"

alias irb=pry

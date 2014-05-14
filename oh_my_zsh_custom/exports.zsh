export EDITOR=vim

export JAVA_HOME=`/usr/libexec/java_home`
export JRUBY_OPTS=--1.9
export EC2_HOME=`brew --prefix ec2-api-tools`/libexec
export AWS_ELASTICACHE_HOME=`brew --prefix aws-elasticache`/libexec

export JAVA_OPTS=-Xmx768m

export OPSCODE_USER=hgavin
export ORGNAME=mydrive

export MAKEFLAGS="-j 6"
export REPORTTIME=5

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

[[ -s $HOME/.ec2/mydrive/access_keys ]] && source $HOME/.ec2/mydrive/access_keys
[[ -s $HOME/.api_keys ]] && source $HOME/.api_keys

# /usr/local/opt/rbenv/versions/2.1.0/bin/ruby: warning: RUBY_FREE_MIN is obsolete. Use RUBY_GC_HEAP_FREE_SLOTS instead.
# /usr/local/opt/rbenv/versions/2.1.0/bin/ruby: warning: RUBY_HEAP_MIN_SLOTS is obsolete. Use RUBY_GC_HEAP_INIT_SLOTS instead.
#export RUBY_HEAP_MIN_SLOTS=1000000
#export RUBY_HEAP_SLOTS_INCREMENT=1000000
#export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
#export RUBY_GC_MALLOC_LIMIT=1000000000
#export RUBY_HEAP_FREE_MIN=500000
#export RUBY_FREE_MIN=500000

export FC=`brew --prefix gfortran`/bin/gfortran

export PATH=`brew --prefix hadoop121`/bin:$PATH
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

export LESS='-R -FX'

export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

export GOPATH=$HOME/src/go

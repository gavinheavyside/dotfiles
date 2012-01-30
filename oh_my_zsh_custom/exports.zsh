export EDITOR=vim

export JAVA_HOME=`/usr/libexec/java_home`
export JRUBY_OPTS=--1.9
export EC2_HOME=`brew --prefix ec2-api-tools`/jars

export JAVA_OPTS=-Xmx768m

export OPSCODE_USER=hgavin
export ORGNAME=mydrive

export MAKEFLAGS="-j 6"
export REPORTTIME=5

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

[[ -s $HOME/.ec2/mydrive/access_keys ]] && source $HOME/.ec2/mydrive/access_keys
[[ -s $HOME/.api_keys ]] && source $HOME/.api_keys

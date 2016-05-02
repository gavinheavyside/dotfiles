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

# [[ -s $HOME/.ec2/mydrive/access_keys ]] && source $HOME/.ec2/mydrive/access_keys
# [[ -s $HOME/.api_keys ]] && source $HOME/.api_keys

export LESS='-R -FX'

# export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/gavin/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1

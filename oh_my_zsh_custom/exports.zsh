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

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_FREE_MIN=500000

export FC=`brew --prefix gfortran`/bin/gfortran

export PATH=$PATH:/opt/aws/AWS-ElasticBeanstalk-CLI-2.2/eb/macosx/python2.7

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

export LESS='-R -FX'

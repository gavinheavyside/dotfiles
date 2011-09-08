export EDITOR=vim
export PATH=$PATH:$HOME/bin

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME=`brew --prefix ec2-api-tools`/jars

export JAVA_OPTS=-Xmx768m

export OPSCODE_USER=hgavin
export ORGNAME=mydrive

[[ -s $HOME/.ec2/mydrive/access_keys ]] && source $HOME/.ec2/mydrive/access_keys
[[ -s $HOME/.api_keys ]] && source $HOME/.api_keys

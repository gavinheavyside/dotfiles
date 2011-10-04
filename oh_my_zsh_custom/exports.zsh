export EDITOR=vim
export TEX_PATH=/usr/local/texlive/2011/bin
export PATH=$PATH:$TEX_PATH:$HOME/bin

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME=`brew --prefix ec2-api-tools`/jars

export JAVA_OPTS=-Xmx768m

export OPSCODE_USER=hgavin
export ORGNAME=mydrive

[[ -s $HOME/.ec2/mydrive/access_keys ]] && source $HOME/.ec2/mydrive/access_keys
[[ -s $HOME/.api_keys ]] && source $HOME/.api_keys

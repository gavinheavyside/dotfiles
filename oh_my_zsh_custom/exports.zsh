export JAVA_OPTS=-Xmx768m

export MAKEFLAGS="-j 6"
export REPORTTIME=5

export LESS='-R -FX'

# export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

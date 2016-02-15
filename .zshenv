# ENV ZSH - PERSONA IO
# JAN 2015

# EDITOR --------------------------
export EDITOR="$(which vim)"

# PATHS --------------------------

#PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#NODENV
export PATH="$HOME/.nodenv/bin:$PATH"
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# PYTHON
PYENV_CURRENT_VERSION="$(pyenv which python)"
PYENV_CONVERTED=${PYENV_CURRENT_VERSION:0:-7}
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PIP_RESPECT_VIRTUALENV="true"
export VIRTUALENVWRAPPER_PYTHON="$PYENV_CURRENT_VERSION"
export VIRTUALENVWRAPPER_HOOK_DIR="$HOME/.virtualenvs"
export WORKON_HOME="/var/www/apps/Python"
export PIP_VIRTUALENV_BASE=$WORKON_HOME
source "$PYENV_CONVERTED/virtualenvwrapper.sh"


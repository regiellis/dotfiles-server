# ENV ZSH - PERSONA IO
# JAN 2015

# EDITOR --------------------------
export EDITOR="$(which vim)"

# PATHS --------------------------

#PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export PATH="$HOME/user/.pyenv/bin:$PATH"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#NODENV
export PATH="$HOME/.nodenv/bin:$PATH"
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# PYTHON
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="false"
export PIP_RESPECT_VIRTUALENV="true"
export VIRTUALENVWRAPPER_PYTHON="$(pyenv which python)"
export VIRTUALENVWRAPPER_HOOK_DIR="$HOME/.virtualenvs"
export WORKON_HOME="$HOME/www/apps/Python"
export PIP_VIRTUALENV_BASE=$WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh


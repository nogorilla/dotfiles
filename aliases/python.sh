###############
## python stuff
###############
alias python='python3'
alias pip='pip3'
# alias penv='pyvenv'
# alias pm='python manage.py'
# export PYTHONPATH="/usr/local/Cellar/python/3.7.0/bin/python3:$PYTHONPATH"

export PIP_REQUIRE_VIRTUALENV=true
# VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python3'
# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper_lazy.sh

gpip(){
   PIP_REQUIRE_VIRTUALENV="0" pip3 "$@"
}
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "'${1}' already exists"
  else
    mkdir $1 && cd $1
  fi
}

function mkpub {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
    read $1
  fi
  #Replace with a local path to your repos
  mkdir $1
  cd $1
  git init
  print "#$1" > README.md
  touch .gitignore
  hub create
  git add .
  git commit -m "First commit: add README, LICENSE, and .gitignore."
  git push -u origin master
  hub browse
}

backup() {
  now=`date +'%Y%m%d'`
  # TODO spawn child process
  BACKUP_DIR="/Users/gabe/Dropbox/Backups"
  brew list --casks > ${BACKUP_DIR}/brew.${now}.txt 2>/dev/null;
  npm list -g --depth=0 > ${BACKUP_DIR}/npm_packages.${now}.txt 2>/dev/null;
  cp ${HOME}/.ssh/config ${BACKUP_DIR}/ssh.config.${now}
  cp ${HOME}/.aws/config ${BACKUP_DIR}/aws.config.${now}
  cp ${HOME}/.aws/credentials ${BACKUP_DIR}/aws.credentials.${now}
  zip -Djqr ${BACKUP_DIR}/ssh.${now}.zip ${HOME}/.ssh
  cp ${HOME}/.shuttle.json ${BACKUP_DIR}/shuttle.json.${now}
}

_jwt () {
  local jwtheader jwtbody jwtsignature headerpads bodypads signaturepads i
  [[ "${1}" ]] || { echo "usage: _jwt <token>" >&2; return 1; }
  jwtheader="${1/%.*}"
  jwtbody="${1/#${jwtheader}.}"
  jwtbody="${jwtbody/%.*}"
  jwtsignature="${1/#${jwtheader}.${jwtbody}.}"
  jwtheader="${jwtheader//+/-}"
  jwtheader="${jwtheader//\//_}"
  jwtbody="${jwtbody//+/-}"
  jwtbody="${jwtbody//\//_}"
  jwtsignature="${jwtsignature//+/-}"
  jwtsignature="${jwtsignature//\//_}"
  headerpads=$((4 - $((${#jwtheader} % 4))))
  bodypads=$((4 - $((${#jwtbody} % 4))))
  signaturepads=$((4 - $((${#jwtsignature} % 4))))
  (( headerpads == 4 )) || { for (( i=0; i < headerpads; i++)); do jwtheader+="="; done; }
  (( bodypads == 4 )) || { for (( i=0; i < bodypads; i++)); do jwtbody+="="; done; }
  (( signaturepads == 4 )) || { for (( i=0; i < signaturepads; i++)); do jwtsignature+="="; done; }
  printf '%s' "${jwtheader}" | base64 -d | jq .
  printf '\n'
  printf '%s' "${jwtbody}" | base64 -d | jq .
  printf '\n'
  printf '%s' "${jwtsignature}"
  printf '\n'
  return 0
}

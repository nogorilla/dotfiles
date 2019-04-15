function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\$1' already exists"
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
  brew list > ${BACKUP_DIR}/brew.${now}.txt 2>/dev/null;
  npm list -g --depth=0 > ${BACKUP_DIR}/npm_packages.${now}.txt 2>/dev/null;
  cp ${HOME}/.ssh/config ${BACKUP_DIR}/.ssh.config.${now}
  # TODO copy .ssh/keys
  cp ${HOME}/.shuttle ${BACKUP_DIR}/.shuttle.${now}
}
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

# Readd ssh key
# http://apple.stackexchange.com/a/254714/67470
ssh-add -K 2>/dev/null;

# eval "$(rbenv init -)"

# export NPM_TOKEN=''
alias nps='npx serverless'
alias npsd='npx serverless deploy -s'
alias npsdf='npx serverless deploy function -f'
alias npsi='npx serverless invoke -f'
alias npsil='npx serverless invoke local -f'
alias npsl='npx serverless logs -t -f'

export NVM_DIR="/Users/gabe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
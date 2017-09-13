##############
# php stuff
##############
alias artisan='php artisan'
alias pu='phpunit'
alias pux='php -d xdebug.profiler_enable=On /usr/local/bin/phpunit'
alias puf='phpunit --filter'
alias pufx='php -d xdebug.profiler_enable=On /usr/local/bin/phpunit --filter'

export PATH="$HOME/.composer/vendor/bin:$PATH"

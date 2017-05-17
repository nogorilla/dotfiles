
PROMPT='$fg[yellow]%~ $(git_prompt_info)$reset_color
$fg_bold[blue]$ $reset_color'
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green]("
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg_bold[green])"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" $reset_color$fg[red]✗"

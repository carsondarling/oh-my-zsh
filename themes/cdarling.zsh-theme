ZSH_THEME_PROMPT_COLOR="$FG[044]"
ZSH_THEME_DARK_GRAY="$FG[240]"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$ZSH_THEME_DARK_GRAY%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$ZSH_THEME_DARK_GRAY%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭%{$reset_color%}"

if [ $UID -eq 0 ]; then DCOLOR="$FG[red]"; else DCOLOR="$ZSH_THEME_DARK_GRAY"; fi

currentdir() {
    echo "%{$DCOLOR%}%2~%{$reset_color%}"
}

PROMPT='
$(currentdir) %{$ZSH_THEME_PROMPT_COLOR%}▶%{$reset_color%} %{%b%}'

RPROMPT='$(git_prompt_status) $(git_prompt_info)'

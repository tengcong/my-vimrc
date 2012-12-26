# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
rvm_ruby='%{$fg[blue]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="%{$fg[blue]%}╭─${current_dir} ${rvm_ruby} ${git_branch}
%{$fg[blue]%}╰─ %{$fg[blue]%}%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

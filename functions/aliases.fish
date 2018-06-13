# base aliases {{{
alias vi="nvim"
alias git="hub"
alias reload=". ~/.config/fish/config.fish"
alias ll="ls -l -h"
alias la="ls -la -h"
alias ...="cd ../.."
alias ....="cd ../../.."
alias clean="git reset --hard HEAD; and git clean -df"
alias cvs="rm ~/.local/share/nvim/swap/*" 
alias gs="gcloud alpha interactive"
# note functions
alias ctoday="joplin use days & joplin cat $DATE"
alias today="joplin use days & joplin edit $DATE; joplin sync"
alias cyesterday="joplin use days & joplin cat $YDATE"
alias yesterday="joplin use days & joplin edit $YDATE; joplin sync"
# }}}
# {{{ tmux aliases
alias tks="tmux kill-session -t"
alias tkserv="tmux kill-server"
alias tls="tmux list-session"
alias attach="tmux attach -t"
alias detach="tmux detach"
# }}}
# quick-edit {{{
alias ev="vi ~/.config/nvim/init.vim"
alias ef="vi ~/.config/fish/config.fish"
alias eff="vi ~/.config/fish/functions/"
alias efa="vi ~/.config/fish/functions/aliases.fish"
alias efp="vi ~/.config/fish/functions/fish_prompt.fish"
alias sf=". ~/.config/fish/config.fish"
alias et="vi ~/.tmux.conf"
alias st="tmux source ~/.tmux.conf"
alias eh="vi ~/.hyper.js"
# }}}
# exports {{{
set -gx EDITOR "nvim"
set -gx PATH ~/.miniconda/bin $PATH
set -gx PATH $PATH ~/Applications/google-cloud-sdk/bin
. ~/.miniconda/etc/fish/conf.d/conda.fish
#}}}
# vim:foldmethod=marker:foldlevel=0

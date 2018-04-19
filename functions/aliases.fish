# base aliases {{{
alias vi="nvim"
alias git="hub"
alias reload=". ~/.config/fish/conf.d/omf.fish"
alias ll="ls -la -h"
alias ...="cd ../.."
alias ....="cd ../../.."
alias clean="git reset --hard HEAD; and git clean -df"
alias cvs="rm ~/.local/share/nvim/swap/*" 
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

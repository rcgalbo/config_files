# base aliases {{{
alias vi="nvim"
alias git="hub"
alias reload=". ~/.config/fish/conf.d/omf.fish"
alias ll="ls -la"
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
alias eff="vi ~/.config/fish/config.fish"
alias ef="vi ~/.config/fish/functions/"
alias sf=". ~/.config/fish/config.fish"
alias et="vi ~/.tmux.conf"
alias st="tmux source ~/.tmux.conf"
# }}}
# exports {{{
set -gx EDITOR "nvim"
set -gx RSTUDIO_WHICH_R /usr/binset 
set -gx PATH ~/.miniconda/bin $PATH
set -gx PATH $PATH ~/Applications/google-cloud-sdk/bin
# set -gx PATH $PATH ~/.gem/ruby/2.3.0/bin/
# set -gx PATH $PATH ~/domino/
. ~/.miniconda/etc/fish/conf.d/conda.fish
#}}}
# vim:foldmethod=marker:foldlevel=0

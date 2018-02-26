# base aliases {{{
alias vi="nvim"
alias reload=". ~/.config/fish/conf.d/omf.fish"
alias ll="ls -la"
alias ...="cd ../.."
alias ....="cd ../../.."
alias clean="git reset --hard HEAD; and git clean -df"
alias cvs="rm ~/.local/share/nvim/swap/*" 
# }}}
# {{{ tmux aliases
alias tks="tmux kill-session"
alias tkserv="tmux kill-server"
alias tls="tmux list-session"
alias attach="tmux attach"
alias detach="tmux detach"
alias tsw="tmux switch"
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
set -gx PATH $PATH ~/.config/fish/nvm-wrapper/
set -gx PATH $PATH ~/.gem/ruby/2.3.0/bin/
#}}}
# vim:foldmethod=marker:foldlevel=0

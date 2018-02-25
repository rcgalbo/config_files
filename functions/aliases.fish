# base aliases {{{
alias vi="nvim"
alias reload="source ~/.config/fish/conf.d"
alias ll="ls -la"
alias ...="cd ../.."
alias ....="cd ../../.."
alias clean="git reset --hard HEAD; and git clean -df"
alias cvs="rm ~/.local/share/nvim/swap/*" 
# }}}
# py/conda aliases{{{
alias actv="conda activate"
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
alias sf="source ~/.config/fish/config.fish"
alias et="vi ~/.tmux.conf"
alias st="tmux source ~/.tmux.conf"
# }}}
# vim:foldmethod=marker:foldlevel=0

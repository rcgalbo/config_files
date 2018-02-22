# base aliases {{{
alias vi="nvim"
alias c=clear
alias reload="source ~/.config/fish/conf.d"
alias ll="ls -la"
alias sum="paste -sd+ - | bc"
alias ...="cd ../.."
alias ....="cd ../../.."
alias clean="git reset --hard HEAD; and git clean -df"
alias attach="tmux attatch"
alias detatch="tmux detatch"
alias cvs="rm ~/.local/share/nvim/swap/*" 
alias chrome="google-chrome"
# }}}
# py/conda aliases{{{
alias py="python"
alias actv="conda activate"
# }}}
# git aliases {{{
alias gs="git status"
alias gc="git clone"
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
# }}}
# quick source {{{
alias sv="source  ~/.config/nvim/init.vim"
alias sf="source ~/.config/fish/config.fish"
# }}}

# vim:foldmethod=marker:foldlevel=0

# disable fish greeting message
set fish_greeting
set fish_vi_key_bindings
set fish_mode_prompt
set -xg EDITOR "nvim"
# set date var ~ for note
set -xg DATE ( date +%Y-%m-%d)
set -xg YDATE ( date -v-1d +%Y-%m-%d )
# source setup file
. ~/.config/fish/functions/aliases.fish 

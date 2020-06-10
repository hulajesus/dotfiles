# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets

bindkey -v                                          # Use vi key bindings
bindkey '^r' history-incremental-search-backward    # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.
bindkey '^b' history-incremental-search-forward

# emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# Make numpad enter work
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"

# switch between vim & shell by ctrl-z
fancy-ctrl-z () {
 if [[ $#BUFFER -eq 0 ]]; then
     BUFFER="fg"
   zle accept-line
 else
   zle push-input
   zle clear-screen
 fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# ---- Starship (prompt) ----
eval "$(starship init zsh)"

# ---- Plugins (sin Oh My Zsh) ----
source "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ---- Opciones de zsh ----
setopt AUTO_CD

# ---- Completion ----
autoload -Uz compinit && compinit

# ---- Flecha arriba/abajo inteligente (filtra historial) ----
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search

export PATH="$HOME/.local/bin:$PATH"

alias ff="fastfetch --pipe false"
fastfetch --pipe false

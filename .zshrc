# ---- Starship (prompt) ----
eval "$(starship init zsh)"

# ---- Plugins (sin Oh My Zsh) ----
source "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

export PATH="$HOME/.local/bin:$PATH"

alias ff="fastfetch --pipe false"
fastfetch --pipe false

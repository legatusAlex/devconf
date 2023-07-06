# The completion system activation
autoload -Uz compinit
compinit

# extended history size
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt EXTENDED_HISTORY

# configs
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/completions.zsh ]] && source ~/.config/zsh/completions.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh
[[ -f ~/.config/zsh/plugins/plugins.zsh ]] && source ~/.config/zsh/plugins/plugins.zsh
[[ -f ~/.config/zsh/starship.zsh ]] && source ~/.config/zsh/starship.zsh
[[ -f ~/.config/zsh/envvars.zsh ]] && source ~/.config/zsh/envvars.zsh

# Load Starship
eval "$(starship init zsh)"

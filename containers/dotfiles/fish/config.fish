
if status is-interactive
  # alias tree="tree -AC"
  alias vim="nvim"
end

# Globals
set -Ux tmux_conf ~/.config/tmux/tmux.conf
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml


# Initialise starship for prompt
starship init fish | source


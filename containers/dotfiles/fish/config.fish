
if status is-interactive
  # Replacing vim with neovim
  alias vim="nvim"
  # Force tmux to use 256 colors
  alias tmux="tmux -2"
  # Enable colors in tree
  alias tree="tree -C"
end

# Globals
set -Ux	TERM xterm-256color
set -Ux tmux_conf ~/.config/tmux/tmux.conf
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml


# Initialise starship for prompt
starship init fish | source


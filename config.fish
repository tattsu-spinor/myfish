### Env
# bat
set -gx BAT_STYLE grid
# brew
set -gx HOMEBREW_BUNDLE_FILE_GLOBAL $HOME/.config/brew/Brewfile
# editor
set -gx EDITOR nvim
# java
set -gx JAVA_HOME (/usr/libexec/java_home)
# lazygit
set -gx XDG_CONFIG_HOME $HOME/.config
# locale
set -gx LC_ALL $LANG

### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (oh-my-posh)
oh-my-posh init fish --config (brew --prefix oh-my-posh)/themes/powerlevel10k_rainbow.omp.json --manual | source
oh-my-posh completion fish | source

### zoxide
zoxide init fish | source

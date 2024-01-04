### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (oh-my-posh)
oh-my-posh init fish --config (brew --prefix oh-my-posh)/themes/powerlevel10k_rainbow.omp.json --manual | source
oh-my-posh completion fish | source

### zoxide
zoxide init fish | source

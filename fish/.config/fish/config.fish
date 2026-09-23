#set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx PAGER less

#----------------------------------
# Theme
#----------------------------------

# Catppuccin Theme
#fish_config theme save "Catppuccin Frappe"

#set -g async_prompt_functions _pure_prompt_git
#set -g pure_color_git_dirty pure_color_danger

# Rose Pine
#fish_config theme save "Rosé Pine"

# Kanagawa theme
#fish_config theme save kanagawa

#----------------------------------
# Aliases
#----------------------------------

alias ls "eza --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"
alias l "eza --git-ignore --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"
alias ll "eza --all --header --long --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"
alias llm "eza --all --header --long --sort=modified --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"
alias la "eza -lbhHigUmuSa"
alias lx "eza -lbhHigUmuSa@"
alias lt "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"
alias tree "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale=all"

alias g git
alias gi "git init"
alias ga "git add"
alias gc "git commit"
alias gs "git status -u"
alias gl "git log"
alias glo "git log --oneline"
alias grs "git reset --soft"
alias grh "git reset --hard"
alias lg lazygit
alias k kubectl
command -qv nvim && alias vim nvim
command -qv terraform && alias tf terraform

alias cat bat
alias cl clear
alias ff fastfetch
alias ks "kitten ssh"

set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
fzf_configure_bindings --directory=\cf
fzf_configure_bindings --history=\ch

#----------------------------------
# PATHS
#----------------------------------

fish_add_path bin
fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path /home/jan/.local/bin

# NodeJS
fish_add_path node_modules/.bin

# Go
fish_add_path ~/go/bin

fish_add_path ~/Documents/PROClient

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#----------------------------------
# NodeJS
#----------------------------------

set -gx nvm_default_version latest

#----------------------------------
# Starship
#----------------------------------

starship init fish | source

zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/home/jan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/jan/.lmstudio/bin
# End of LM Studio CLI section

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx nvm_prefix $(brew --prefix nvm)

bind `` _fzf_search_directory
bind `h _fzf_search_history
bind `- _fzf_search_git_status
bind `= _fzf_search_git_log
bind `s '_fzf_search_variables (set --show | psub) (set --names | psub)'
bind `a _fzf_search_processes

export PATH="$PATH":"$HOME/.pub-cache/bin"

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx PNPM_HOME "/Users/andrejprokopenko/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# aliases
alias ll "exa -l -g --icons"
alias lla "ll -a"

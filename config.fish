if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx nvm_prefix $(brew --prefix nvm)
bind `1 _fzf_search_directory
bind `q _fzf_search_git_log
bind `w _fzf_search_git_status
bind `2 _fzf_search_history
bind `s '_fzf_search_variables (set --show | psub) (set --names | psub)'
bind `a _fzf_search_processes

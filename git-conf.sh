echo "Git -> Configuring aliases..."
git config --global alias.get "clone http://github.com/OneEyed1366/OneEyed1366.git -b"
git config --global alias.cm "commit -m"
git config --global alias.commend "commit --amend --no-edit"
git config --global alias.it "init && git commit -m 'root commit' --allow-empty"
git config --global alias.shorty "status --short --branch"
git config --global alias.grog \
  "log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"
git config --global alias.cp '!f() { git add $1 && git cm "$2" && git push }; f'
git config --global alias.acp '!f() { git add -A && git commit -m "$1" && git push; }; f'
git config --global alias.acpf '!f() { git add -A && git commit -m "$1" && git push --force; }; f'
git config --global alias.acplease '!f() { git add -A && git commit -m "$1" && git push --force-with-lease; }; f'

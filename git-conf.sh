echo "Git -> Configuring basic things"
git config --global user.name "OneEyed1366"
git config --global user.email "psevdoproger@gmail.com"
git config --global pull.rebase true
git config --global core.editor "nvim"
git config --global merge.tool "vimdiff"
git config --global merge.conflictstyle "diff3"
echo "Git -> Configuring aliases..."
git config --global alias.get "clone http://github.com/OneEyed1366/OneEyed1366.git -b"
git config --global alias.cm "commit -m"
git config --global alias.acm "!f() { git add -A && git commit -m \"$1\"; }; f"
git config --global alias.commend "commit --amend --no-edit"
git config --global alias.acommend = "!f() { git add -A && git commit --amend --no-edit; }; f"
git config --global alias.it "init && git commit -m 'root commit' --allow-empty"
git config --global alias.shorty "status --short --branch"
git config --global alias.grog \
  "log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"
git config --global alias.acp '!f() { git add -A && git commit -m "$1" && git push; }; f'
git config --global alias.acpf '!f() { git add -A && git commit -m "$1" && git push --force; }; f'
git config --global alias.acplease '!f() { git add -A && git commit -m "$1" && git push --force-with-lease; }; f'

git config --global alias.get "pull --rebase"
echo "Git -> Configuring branch aliases"
git config --global alias.bb "!f() { git branch --all; }; f"
git config --global alias.bnp '!f() { git checkout -b $1 7& git push --set-upstream origin $1; }; f'
git config --global alias.bd '!f() { git push -d "$1" "$2" && git branch -d "$2"; }; f'
git config --global alias.bdr '!f() { git push -d "$1" "$2"; }; f'
git config --global alias.bdl '!f() { git branch -d "$1"; }; f'


# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

export EDITOR=emacs

# 配置更合理的命令行提示符
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"

# alt-p, alt-n 在命令历史中搜索命令行
case "$-" in
*i*)
  # 仅当是交互式 shell 的时候，才激活
  bind  '"\ep":history-search-backward'
  bind  '"\en":history-search-forward'
esac

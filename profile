# ~/.bashrc: executed by bash(1) for non-login shells.

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

umask 022

export LS_OPTIONS='-G'
alias ls='ls $LS_OPTIONS'
alias git=hub
alias gist=jist

keychain ~/.ssh/id_rsa ~/.ssh/id_rsa_4096 ~/.ssh/ec2
. ~/.keychain/$HOSTNAME-sh

function parse_pairing {
  [[ $GIT_AUTHOR_NAME != "" ]] && echo '[pair] '
}

function parse_git_dirty {
 [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\[\033[01;32m\]\u@\h \[\033[11;33m\]$(parse_pairing)\[\033[01;34m\]\W $(parse_git_branch) \[\033[01;34m\]\$ \[\033[00m\]'

source ~/.git_completion.bash
source ~/.bash/completion-ruby/completion-ruby-all

export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

source ~/.bashrc
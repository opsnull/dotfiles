#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias emacs="LC_CTYPE=zh_CN.UTF-8 emacs"
alias grep='grep --color=always'
alias smth='luit -encoding gbk -- telnet newsmth.org'
alias hkday='luit -encoding big5 -- telnet hkday.net'

alias mushy='rlwrap netcat localhost 4200'
function ls
	command ls -lAhFG --color=never --group-directories-first $argv | sed -n '1!p'
end
set TERM xterm-256color
set fish_greeting "Welcome back, $USER"
alias emacs='emacs -nw'
alias grep='grep --color=never'
alias diff='diff -u'
alias sbcl='rlwrap sbcl --noinform'
alias granite='sbcl --load ~/common-lisp/granite/granite.cl'
alias sprunge='curl -F "sprunge=<-" http://sprunge.us'
xmodmap -e "keycode 94 = grave asciitilde"
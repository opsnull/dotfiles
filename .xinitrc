#wicd-gtk &
LC_CTYPE=zh_CN.utf8 emacs --daemon &

#ibus-daemon --xim &
#export XMODIFIERS="@im=ibus"
#export QT_IM_MODULE=ibus
#export GTK_IM_MODULE=ibus

#fcitx &
#英文输入法应该为Keyboard-English(US)，否则输入的字符和键盘上不一致;
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx

xmodmap .xmodmap
xrdb .Xresources

exec awesome
#exec ck-launch-session startkde
#exec ck-launch-session gnome-session

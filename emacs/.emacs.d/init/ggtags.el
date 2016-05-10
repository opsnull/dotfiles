; 1): 编译universal-ctags: https://github.com/universal-ctags/ctags
; 如果是mac，在编译前需要执行命令: xcode-select --install命令来安装编译器；
; 2): 编译ggtags: https://github.com/leoliu/ggtags
; ./configure --prefix=<PREFIX> --with-exuberant-ctags=/usr/local/bin/ctags #指向刚才安装的ctags位置；
; make && make install
; cp /usr/local/share/gtags/gtags.conf $HOME/.globalrc
; % diff /usr/local/share/gtags/gtags.conf ~/.globalrc
; 35c35
; < 	:tc=native:
; ---
; > 	:tc=native:new-ctags:

(require 'ggtags)
;(setenv "GTAGSLABEL" "pygments")
;(setq ggtags-global-mode 1)

(add-hook 'c-mode-common-hook
    (lambda ()
      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
  (ggtags-mode 1))))

;(add-hook 'dired-mode-hook 'ggtags-mode)
(add-hook 'go-mode-hook 'ggtags-mode)
(add-hook 'python-mode-hook 'ggtags-mode)
; ggtags integrate Imenu
(setq-local imenu-create-index-function #'ggtags-build-imenu-index)

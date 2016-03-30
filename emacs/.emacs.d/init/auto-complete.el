;auto-complete补全
(shell-command "mkdir -p ~/.emacs.d/cache" )
(set 'ac-dictionary-directories "~/.emacs.d/cache/ac-dict")
(set 'ac-comphist-file "~/.emacs.d/cache/ac-comphist.dat")
(set 'ac-use-comphist t)
(setq ac-use-menu-map t)
(setq ac-dwim t) ;Do-What-I-Mean

(require 'auto-complete-config)
(ac-config-default)

;添加'ac-config-defaut'没有启用的source, 全局生效；
(setq-default ac-sources
              (append
               '(ac-source-semantic ;; c/c++代码自动补全
                 ac-source-imenu ac-source-filename
                 ac-source-files-in-current-dir)
               ac-sources))

;增加缺省没有启用ac的mode；
(setq ac-modes (append ac-modes '(org-mode sql-mode text-mode django-mode)))

;重新配置候选键到C-p和C-n(默认TAB)， 避免和sementic插件的候选键冲突。
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(defalias 'yas/get-snippet-tables 'yas--get-snippet-tables)
(defalias 'yas/table-hash 'yas--table-hash)

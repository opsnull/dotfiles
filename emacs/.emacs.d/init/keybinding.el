; 自定义按键绑定
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-h") 'backward-kill-word)

;;关闭C-SPC命令, 因它与ibus激活键冲突
;;(global-unset-key (kbd "C-SPC"))

;;window resize
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

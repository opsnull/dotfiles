;c/c++配置
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
             (c-toggle-auto-hungry-state 1)
             (local-set-key (kbd "RET") 'newline-and-indent)
             (c-toggle-auto-state)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")
             (c-toggle-auto-hungry-state 1)
             (local-set-key (kbd "RET") 'newline-and-indent)
             (c-toggle-auto-state)))

(setq magit-last-seen-setup-instructions "1.4.0")
(require 'magit)

;gutter显示git diff状态
(global-git-gutter-mode +1)
(git-gutter:linum-setup)

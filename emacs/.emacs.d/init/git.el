(setq magit-last-seen-setup-instructions "1.4.0")
(require 'magit)

;gutter显示git diff状态
(require 'git-gutter)
(global-git-gutter-mode +1)
(git-gutter:linum-setup)

(require 'ivy)
(setq magit-completing-read-function 'ivy-completing-read)

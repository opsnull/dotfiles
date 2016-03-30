;golang配置
(shell-command "go get golang.org/x/tools/cmd/goimports")
(shell-command "go get github.com/nsf/gocode")
(shell-command "go get github.com/rogpeppe/godef")

(setenv "GOPATH" (expand-file-name "~/golang"))
(require 'go-mode-autoloads)

(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "C-c C-a") 'go-import-add)
  (local-set-key (kbd "C-c i") 'go-goto-imports)
  (local-set-key (kbd "C-c C-f") 'gofmt)
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  (local-set-key (kbd "M-.") 'godef-jump)) ;; jump back: M-*
(add-hook 'go-mode-hook 'my-go-mode-hook)

;gocode自动补全
(require 'go-autocomplete)
(require 'auto-complete-config)

;go-eldoc文档
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

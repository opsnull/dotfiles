;golang配置
(shell-command "go get golang.org/x/tools/cmd/goimports")
(shell-command "go get github.com/nsf/gocode")
(shell-command "go get github.com/rogpeppe/godef")

(require 'go-mode-autoloads)

(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "C-c C-a") 'go-import-add)
  (local-set-key (kbd "C-c i") 'go-goto-imports)
  (local-set-key (kbd "C-c C-f") 'gofmt)
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  (local-set-key (kbd "M-.") 'godef-jump)) ;; jump back: M-*

(add-hook 'go-mode-hook (lambda ()
                          ;go-eldoc文档
                          (require 'go-eldoc)
                          (go-eldoc-setup)
                          ;company-go自动补全
                          (require 'company-go)
                          (add-to-list 'company-backends 'company-go)
                          (company-mode)
                          (my-go-mode-hook)))

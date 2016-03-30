(shell-command "pip -q install virtualenv")
(shell-command "pip -q install ipython")
(shell-command "pip -q install jedi")
(shell-command "pip -q install epc")

(setq
 python-shell-interpreter "ipython2"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code  "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
 )

(add-hook 'python-mode-hook
          '(lambda ()
             ;;使用company-jedi作为自动补全后端
             (add-to-list 'company-backends 'company-jedi)
             (local-set-key (kbd "RET") 'newline-and-indent)
             (setq indent-tabs-mode nil)
             (setq tab-width 4)
             (setq python-indent 4)
             (setq python-indent-offset 4)))

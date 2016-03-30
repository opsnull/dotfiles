(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(company-quickhelp-mode 1)

;(setq company-tooltip-limit 20)                      ; bigger popup window
;(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
;(setq company-echo-delay 0)                          ; remove annoying blinking
;(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

;cd ~/myproj/script; ctags -e '*.js'; cd ~/myproj/style; ctags -e '*.css'
(setq tags-table-list (list "~/myproj/script/TAGS" "~/myproj/style/TAGS"))

;; Don't ask before rereading the TAGS files if they have changed
(setq tags-revert-without-query t)
;; Do case-sensitive tag searches
(setq tags-case-fold-search nil) ;; t=case-insensitive, nil=case-sensitive
;; Don't warn when TAGS files are large
(setq large-file-warning-threshold nil)

;(setq ctags-command "/usr/local/bin/ctags -e -R "))

;; {{ etags-select
(autoload 'etags-select-find-tag-at-point "etags-select" "" t nil)
(autoload 'etags-select-find-tag "etags-select" "" t nil)
;; }}

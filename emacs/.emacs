;配置环境变量；
(setq user-full-name "zhangjun3")
(setq user-mail-address "zhangjun3@kingsoft.com")

(setenv "PATH" (concat "~/golang/bin:/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))
(setenv "GOPATH" (expand-file-name "~/golang"))

;配置全局socks代理，访问melpa.org时使用；
(setq socks-noproxy '("localhost" "10.0.0.0/8" "172.0.0.0/8" "*cn"))
(setq socks-server '("ksyun" "127.0.0.1" 1080 5))
(setq url-gateway-method 'socks)
(require 'socks)
(defalias 'open-network-stream 'socks-open-network-stream)

;加载常用的CommonLisp函数和宏定义；
(require 'cl)

;配置package仓库。
(load "package")
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(setq package-archive-enable-alist '(("melpa" deft magit)))

;我的packages列表。
(defvar geekard/packages
  '(auto-complete
    exec-path-from-shell
    expand-region
    flx-ido
    flycheck
    git-gutter
    go-autocomplete ;;依赖godef、gocode、goimports程序
    go-eldoc
    go-mode
    helm
    htmlize
    jedi ;;依赖virtualenv、ipython程序
    js2-mode
    json-mode
    lua-mode
    magit ;;依赖git程序
    markdown-mode ;;依赖pandoc程序
    nyan-mode
    org
    paredit
    projectile
    rainbow-delimiters
    smartparens
    smex
    solarized-theme
    sr-speedbar
    tabbar
    w3m ;;依赖w3m程序
    web-mode
    yaml-mode
    yasnippet
    zenburn-theme
    )
  "Default packages")

;检测package是否安装；
(defun geekard/packages-installed-p ()
  (loop for pkg in geekard/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

;安装geekard/packages列表中的package；
(unless (geekard/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg geekard/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;~/.emacs.d/vendor目录保存的是自定义安装的packages；
(defvar vendor-dir (expand-file-name "vendor" user-emacs-directory))
(add-to-list 'load-path vendor-dir)

(dolist (project (directory-files vendor-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;加载配置文件
(defvar init-dir (expand-file-name "init" user-emacs-directory))
(mapc 'load (directory-files init-dir t ".*el$"))

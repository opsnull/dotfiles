;需要单独安装w3m RPM后才能使用
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-use-cookies t)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

(global-set-key "\C-xm" 'browse-url-at-point)

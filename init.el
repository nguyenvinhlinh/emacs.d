(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/lib/")
(add-to-list 'load-path "~/.emacs.d/lib/neotree")

(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(require 'theme)
(require 'global-config)
(require 'keybinding)
(require 'linh-web-mode)
(require 'linh-java-mode)
(require 'yaml-mode)
(require 'pretty-symbols)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (jdee groovy-mode dockerfile-mode docker-compose-mode tide yasnippet web-mode typescript-mode smex smartparens smart-mode-line-powerline-theme smart-mode-line-atom-one-dark-theme s projectile markdown-mode magit json-mode ido-vertical-mode flycheck exec-path-from-shell emmet-mode elixir-mode dracula-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

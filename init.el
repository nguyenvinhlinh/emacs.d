(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (markdown-mode smart-mode-line-powerline-theme smart-mode-line groovy-mode json-mode smartparens yasnippet exec-path-from-shell tide company smex ido-vertical-mode projectile magit dracula-theme emmet-mode elixir-mode web-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/lib/")
(add-to-list 'load-path "~/.emacs.d/lib/neotree")


(require 'theme)
(require 'global-config)
(require 'keybinding)
(require 'linh-web-mode)

(require 'yaml-mode)

(put 'downcase-region 'disabled nil)

;;; TMP
(sml/setup)
(setq sml/theme 'light-powerline)



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
(require 'yaml-mode)
(require 'pretty-symbols)

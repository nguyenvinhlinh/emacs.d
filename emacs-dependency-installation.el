(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-refresh-contents)

(setq package_list
      (quote (markdown-mode smart-mode-line-powerline-theme smart-mode-line
                            groovy-mode json-mode smartparens yasnippet
                            exec-path-from-shell tide company smex ido-vertical-mode
                            projectile magit dracula-theme emmet-mode elixir-mode web-mode
                            all-the-icons all-the-icons-dired sudo-edit tree-sitter heex-ts-mode
                            ))
      )

(dolist (package_name package_list)
  (package-install package_name)
  )

(provide 'emacs-dependency-install)

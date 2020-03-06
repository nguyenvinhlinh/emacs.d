(toggle-frame-maximized)
(exec-path-from-shell-initialize)
(projectile-global-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'ido)
(ido-mode t)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'dired-x)
(setq-default dired-omit-files-p t)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
(setq dired-dwim-target t)

;; Prevent emacs insert tab instead of space
(setq-default indent-tabs-mode nil)
(require 'simple-secrets)
(defun active-password-manager ()
  "active a simple-secert mode"
  (interactive)
  (setq secret-password-file "~/.password.gpg")
  (secret-load-keys))

(global-company-mode)
(setq company-dabbrev-downcase nil)

(require 'dired-details)
(dired-details-install)
(setq dired-details-hidden-string "🗀 ")

(require 'neotree)
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key [f8] 'neotree-toggle)

(yas-global-mode 1)

(require 'smartparens-config)
(smartparens-global-mode)

(provide 'global-config)

(toggle-frame-maximized)
(exec-path-from-shell-initialize)
(projectile-global-mode)

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


(provide 'global-config)

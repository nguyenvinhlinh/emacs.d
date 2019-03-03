;; Web mode configuration
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html.eex\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.component.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.component.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-css-colorization t)

;; Typescript configuration
(setq typescript-indent-level 2)
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))
;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)
;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook 'setup-tide-mode)

(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(add-hook 'typescript-mode-hook 'smartparens-mode)
(add-hook 'elixir-mode-hook 'smartparens-mode)

(provide 'linh-web-mode)

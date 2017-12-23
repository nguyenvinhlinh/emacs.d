(setq-default indent-tabs-mode nil)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html.eex\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-css-colorization t)

(require 'emmet-mode)
(provide 'linh-web-mode)

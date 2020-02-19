(global-prettify-symbols-mode 1)
(defun add-pretty-elixir-symbols ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(
          ("|>" . 10148) ; ➤
          ("def" . 402)  ; ƒ
          ("fn" . 955)   ;  λ
          )))

(add-hook 'elixir-mode-hook 'add-pretty-elixir-symbols)
(provide 'pretty-symbols)

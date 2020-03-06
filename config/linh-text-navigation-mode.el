(defvar csgo-navigation-map nil "Keymap for `csgo-navigation-mode")
(defvar csgo-navigation-map-activated nil "An indicator for `csgo-navigation-map")

(progn
  (setq csgo-navigation-map (make-sparse-keymap))
  (define-key csgo-navigation-map (kbd "w") (lambda () (interactive) (previous-line 3)))
  (define-key csgo-navigation-map (kbd "a") (lambda () (interactive) (backward-char 3)))
  (define-key csgo-navigation-map (kbd "s") (lambda () (interactive) (next-line 3)))
  (define-key csgo-navigation-map (kbd "d") (lambda () (interactive) (forward-char 3)))

  (define-key csgo-navigation-map (kbd "W") 'previous-line)
  (define-key csgo-navigation-map (kbd "A") 'backward-char)
  (define-key csgo-navigation-map (kbd "S") 'next-line)
  (define-key csgo-navigation-map (kbd "D") 'forward-char)

  (define-key csgo-navigation-map (kbd "M-d") 'forward-word)
  (define-key csgo-navigation-map (kbd "M-a") 'backward-word)
  )


(define-minor-mode csgo-navigation-mode
  "csgo-navigation-mode helps"
  :init-value nil
  :lighter "CSGO"
  :keymap csgo-navigation-map
  :global t
  )


(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'csgo-navigation-mode)

(defvar csgo-navigation-map nil "Keymap for `csgo-navigation-mode")
(defvar csgo-navigation-map-activated nil "An indicator for `csgo-navigation-map")


(progn
  (setq csgo-navigation-map (make-sparse-keymap))
  (define-key csgo-navigation-map (kbd "w") 'previous-line)
  (define-key csgo-navigation-map (kbd "a") 'backward-char)
  (define-key csgo-navigation-map (kbd "s") 'next-line)
  (define-key csgo-navigation-map (kbd "d") 'forward-char)
  )

(define-minor-mode csgo-navigation-mode
  "This mode navigate cursor using CSGO Style"
  :INIT-VALUE nil
  :LIGHTER "csgo-cursor-navigation"
  :KEYMAP csgo-navigation-map

  (progn

    )
)

(defun csgo-navigation-toggle ()
  "Activate/Deactivate csgo-navigation-map"
  (interactive)

  (if (equal csgo-navigation-map-activated nil)
      (progn
        (setq overriding-local-map csgo-navigation-map)
        (setq csgo-navigation-map-activated t)
        (message "Activate csgo navigation map"))
    (progn
      (setq overriding-local-map nil)
      (setq csgo-navigation-map-activated nil)
      (message "Deactivate csgo navigation map"))
    )
  )

;; (use-local-map csgo-navigation-map)

;; (current-local-map)

(current-local-map)


(use-local-map global-map)
(use-local-map csgo-navigation-map)
(setq overriding-local-map csgo-navigation-map)
(setq overriding-local-map nil)



minor-mode-alist

(csgo-navigation-toggle)

(self-insert-command 9)

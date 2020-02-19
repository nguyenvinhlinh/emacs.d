(global-set-key (kbd "C-c g") 'magit-status)
(global-unset-key (kbd "M-`"))
(global-set-key (kbd "M-`") 'toggle-truncate-lines)

(defun delete-trailing-whitespace-and-save-buffer ()
  "Delete trailing whitespace and save current buffer"
  (interactive "*")
  (progn
    (delete-trailing-whitespace)
    (save-buffer))
  )

(global-unset-key (kbd "C-x C-s"))
(global-set-key (kbd "C-x C-s") 'delete-trailing-whitespace-and-save-buffer)


(defun split-window-right-and-other-window ()
  "Split window right and go to other window"
  (interactive "*")
  (progn
    (split-window-right)
    (other-window 1)
    )
  )

(defun split-window-below-and-other-window ()
  "Split window below and go to other window"
  (interactive "*")
  (progn
    (split-window-below)
    (other-window 1)
    )
  )

(global-unset-key (kbd "C-x 2"))
(global-unset-key (kbd "C-x 3"))
(global-set-key (kbd "C-x 2") 'split-window-below-and-other-window)
(global-set-key (kbd "C-x 3") 'split-window-right-and-other-window)

(provide 'keybinding)

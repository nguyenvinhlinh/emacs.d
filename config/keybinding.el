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


(provide 'keybinding)

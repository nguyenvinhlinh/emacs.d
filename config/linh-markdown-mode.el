(custom-set-variables
 '(livedown-autostart t) ; automatically open preview when opening markdown files
 '(livedown-open t)        ; automatically open the browser window
 '(livedown-port 1337)     ; port for livedown server
 '(livedown-browser "/usr/bin/google-chrome"))  ; browser to use

(require 'livedown)

(provide 'linh-markdown-mode)

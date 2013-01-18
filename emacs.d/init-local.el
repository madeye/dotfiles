(setq inhibit-startup-message   t)   ; Don't want any startup message
(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq-default save-place t)                   ;; activate it for all buffers
(require 'saveplace)                          ;; get the package

(require 'sr-speedbar)
(menu-bar-mode -1)
(global-linum-mode t)
(setq linum-format "%3d \u2502")

(provide 'init-local)

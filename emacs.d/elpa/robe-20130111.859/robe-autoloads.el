;;; robe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (robe-mode) "robe" "robe.el" (20727 47358 957131
;;;;;;  164000))
;;; Generated autoloads from robe.el

(autoload 'robe-mode "robe" "\
Improved navigation for Ruby

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (robe-ac-available) "robe-ac" "robe-ac.el" (20727
;;;;;;  47358 873131 163000))
;;; Generated autoloads from robe-ac.el

(autoload 'robe-ac-available "robe-ac" "\
Return t if `robe-mode' completions are available, otherwise nil.

\(fn)" nil nil)

(defconst ac-source-robe '((available . robe-ac-available) (candidates . robe-ac-candidates) (document . robe-ac-doc) (symbol . "r")) "\
`auto-complete' completion source for Ruby using `robe-mode'.")

;;;***

;;;### (autoloads (company-robe) "robe-company" "robe-company.el"
;;;;;;  (20727 47358 921131 163000))
;;; Generated autoloads from robe-company.el

(autoload 'company-robe "robe-company" "\
A `company-mode' completion back-end for `robe-mode'.

\(fn COMMAND &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("robe-pkg.el") (20727 47359 340100 457000))

;;;***

(provide 'robe-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; robe-autoloads.el ends here

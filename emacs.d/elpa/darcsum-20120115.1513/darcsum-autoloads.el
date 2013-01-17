;;; darcsum-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (darcsum-view darcsum-whatsnew darcsum-changes)
;;;;;;  "darcsum" "darcsum.el" (20727 47447 585131 145000))
;;; Generated autoloads from darcsum.el

(autoload 'darcsum-changes "darcsum" "\
Show the changes in another buffer.
Optional argument HOW-MANY limits the number of changes shown,
counting from the most recent changes.

\(fn &optional HOW-MANY)" t nil)

(autoload 'darcsum-whatsnew "darcsum" "\
Run `darcs whatsnew' in DIRECTORY, displaying the output in `darcsum-mode'.

When invoked interactively, prompt for the directory to display changes for.
With prefix arg LOOK-FOR-ADDS, run darcs with argument `--look-for-adds'.
Display the buffer unless NO-DISPLAY is non-nil.
Show context around changes if SHOW-CONTEXT is non-nil.

\(fn DIRECTORY &optional LOOK-FOR-ADDS NO-DISPLAY SHOW-CONTEXT)" t nil)

(autoload 'darcsum-view "darcsum" "\
View the contents of the current buffer as a darcs changeset for DIRECTORY.
More precisely, search forward from point for the next changeset-like region,
and attempt to parse that as a darcs patch.

When invoked interactively, prompt for a directory; by default, the current
working directory is assumed.

\(fn DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil nil ("50darcsum.el" "darcsum-pkg.el") (20727
;;;;;;  47447 655478 556000))

;;;***

(provide 'darcsum-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; darcsum-autoloads.el ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; abbreviations                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; For setting up abbreviation you tipe them followed by "C-x a -"
;; e.g.:
;;            fn C-x a - function
;; Emacs will ask you if you want to save them when you exit.

;; If you type something that you don’t want to be expanded, then follow
;; the abbreviation with C-q, so typing fn C-q SPACE will give you the
;; string function followed by a space.

(setq-default abbrev-mode t)
;; save abbreviations upon exiting xemacs
(setq save-abbrevs t)
;; set the file storing the abbreviations
(setq abbrev-file-name "~/.emacs.d/lisp/my-abbreviations.el")
;; reads the abbreviations file on startup
(quietly-read-abbrev-file)

(provide 'init-abbreviation)

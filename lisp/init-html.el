(require-package 'tidy)
(add-hook 'html-mode-hook (lambda () (tidy-build-menu html-mode-map)))

(require-package 'tagedit)
(after-load 'sgml-mode
  (tagedit-add-paredit-like-keybindings)
  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

;; override tagedit shortcut
(define-key my-keys-minor-mode-map (kbd "<M-left>") 'left-word)
(define-key my-keys-minor-mode-map (kbd "<M-right>") 'right-word)
(define-key my-keys-minor-mode-map (kbd "<C-left>") 'left-word)
(define-key my-keys-minor-mode-map (kbd "<C-right>") 'right-word)


(add-auto-mode 'html-mode "\\.\\(jsp\\|tmpl\\)\\'")

;; Note: ERB is configured in init-ruby-mode

(provide 'init-html)

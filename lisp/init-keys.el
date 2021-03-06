(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")
;; transpose lines
(define-key my-keys-minor-mode-map (kbd "M-q") 'transpose-lines)

;; compare with previous version
(define-key my-keys-minor-mode-map (kbd "M-P") 'vc-version-ediff)

;; transpose frame
(add-to-list 'load-path (expand-file-name "transpose-frame" *pkg-root*))
(require 'transpose-frame)
(define-key my-keys-minor-mode-map (kbd "C-<tab>") 'flop-frame)

;; M-k kill buffer
(define-key my-keys-minor-mode-map (kbd "M-k") 'kill-this-buffer)

;; same behaviour of C-right/C-left just because I like it!!
(define-key my-keys-minor-mode-map (kbd "<M-left>") 'left-word)
(define-key my-keys-minor-mode-map (kbd "<M-right>") 'right-word)

;; scroll down line by line using M-arrows
(setq scroll-preserve-screen-position 1)
(global-set-key [M-down]  (kbd "C-u 1 C-v"))
(global-set-key [M-up]  (kbd "C-u 1 M-v"))

;; -----------------
(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)
;; -----------------

(provide 'init-keys)

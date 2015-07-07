(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; transpose lines
(define-key my-keys-minor-mode-map (kbd "C-q") 'transpose-lines)

;; compare with previous version
(define-key my-keys-minor-mode-map (kbd "M-P") 'vc-version-ediff)

;; transpose frame
(add-to-list 'load-path (expand-file-name "transpose-frame" *pkg-root*))
(require 'transpose-frame)
(define-key my-keys-minor-mode-map (kbd "C-<tab>") 'flop-frame)

(define-key my-keys-minor-mode-map (kbd "M-k") 'kill-this-buffer)

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

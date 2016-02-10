; Never use tabs
(setq-default indent-tabs-mode nil)

; Default Linux settings
(setq c-default-style "linux"
      c-basic-offset 4)

(add-to-list 'auto-mode-alist '("\\.xc\\'" . c-mode))

(defconst my-c-lineup-maximum-indent 30)
(defun my-c-lineup-arglist (langelem)
  (let ((ret (c-lineup-arglist langelem)))
    (if (< (elt ret 0) my-c-lineup-maximum-indent)
        ret
      (save-excursion
        (goto-char (cdr langelem))
        (vector (+ (current-column) 8))))))
(defun my-indent-setup ()
  (setcdr (assoc 'arglist-cont-nonempty c-offsets-alist)
          '(c-lineup-gcc-asm-reg my-c-lineup-arglist)))

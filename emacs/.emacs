


(let ((default-directory  "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;(load-file "~/.emacs.d/site-lisp/protobuf-mode.el")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; c++ mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; enable cscope in c++ model
(add-hook 'c-mode-common-hook
          '(lambda ()
             (require 'xcscope)))


(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("BUILD\\'" . python-mode))
(load-file "~/.emacs.d/site-lisp/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)

'(compile-command "make")

; compile-again
(global-set-key [(control c) (c)] 'compile-again)
(setq compilation-last-buffer nil)
(defun compile-again (pfx)
  """Run the same compile as the last time.
If there was no last time, or there is a prefix argument, this acts like
M-x compile.
"""
(interactive "p")
(if (and (eq pfx 1)
	 compilation-last-buffer)
    (progn
      (set-buffer compilation-last-buffer)
      (revert-buffer t t))
  (call-interactively 'compile)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; common
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(menu-bar-mode -1)
(setq backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
(setq ediff-split-window-function 'split-window-vertically)
;(require 'cedet)
(put 'set-goal-column 'disabled nil)

(add-hook 'c-mode-common-hook
	  (lambda() 
	    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 设置 gdb
; (setq gud-gdb-command-name "/home/yanglei/gnu/install/bin/gdb --annotate=3")

;; Disable all version control
(setq vc-handled-backends nil)

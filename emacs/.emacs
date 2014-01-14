
;(let ((default-directory  "~/.emacs.d/site-lisp/"))
;;  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d/site-lisp")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; c++ mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; enable cscope in c++ model
(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (require 'xcscope)))

(setq vc-handled-backends nil)
(menu-bar-mode -1)
(setq-default auto-save-default nil)


(load-file "~/.emacs.d/site-lisp/google-c-style.el")
(load-file "~/.emacs.d/site-lisp/ninja-mode.el")
(load-file "~/.emacs.d/site-lisp/protobuf-mode.el")
(load-file "~/.emacs.d/site-lisp/gyp.el")
(load-file "~/.emacs.d/site-lisp/hlsl-mode.el")
(load-file "~/.emacs.d/site-lisp/glsl-mode.el")
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("BUILD\\'" . python-mode))
;(add-to-list 'auto-mode-alist '("\\.gyp\\'" . gyp-mode))
;(add-to-list 'auto-mode-alist '("\\.ninja\\'" . ninja-mode))
;(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))
;(add-to-list 'auto-mode-alist '("\\.hlsl\\'" . hlsl-mode))
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
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
(setq backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
(setq ediff-split-window-function 'split-window-vertically)
;(require 'cedet)
(put 'set-goal-column 'disabled nil)

(add-hook 'c-mode-common-hook
	  (lambda()
	    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

;(require 'whitespace)
;(setq whitespace-style '(face indentation trailing empty lines-tail))
;(setq whitespace-line-column nil)
;(set-face-attribute 'whitespace-line nil
;		    :background "purple"
;		    :foreground "white"
;		    :weight 'bold)
;(global-whitespace-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 设置 gdb
; (setq gud-gdb-command-name "/home/yanglei/gnu/install/bin/gdb --annotate=3")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(if window-system
    (load-file "~/.emacs.d/win32_init.el"))


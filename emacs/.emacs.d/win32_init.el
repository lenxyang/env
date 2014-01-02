(scroll-bar-mode -1)
(menu-bar-mode 0)
(tool-bar-mode 0)
'(compile-command "ninja")
(load-file "~/.emacs.d/mytheme.el")
(set-face-attribute `default nil :font "Courier New 14")
(prefer-coding-system 'utf-8)
(set-fontset-font "fontset-default"
		  'gb18030 '("Microsoft YaHei" . "unicode-bmp"))


; mouse select to copy
(setq mouse-yank-at-point t)

; 最大化窗口
(defun maximize-frame (&optional frame)
   "Maximizes the active frame in Windows"
   (interactive)
   ;; Send a `WM_SYSCOMMAND' message to the active frame with the
   ;; `SC_MAXIMIZE' parameter.
   (when (eq system-type 'windows-nt)
     (w32-send-sys-command 61488)))


(add-hook 'window-setup-hook 'maximize-frame t)
(add-hook 'after-make-frame-functions 'maximize-frame)

; use cdb
(load-file "~/.emacs.d/site-lisp/cdb-gud.el")
(load-file "~/.emacs.d/site-lisp/sr_speedbar.el")
(setq speedbar-use-images nil)
(setq sr-speedbar-max-width 50)
(setq sr-speedbar-width-x 50)
(setq sr-speedbar-width-console 40)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-skip-other-window-p t)

; F12 open or close speedbar
(defun my-speedbar-switch()
  ""
  (interactive)
  (if (not (sr-speedbar-exist-p))
      (progn
	(sr-speedbar-open)
	(sr-speedbar-select-window)
	(with-current-buffer sr-speedbar-buffer-name
	  (setq window-size-fixed 'width))
	)
    (progn
      (sr-speedbar-select-window)
      )
    )
)


;(sr-speedbar-open)
;(with-current-buffer sr-speedbar-buffer-name
;  (setq window-size-fixed 'width))

; ATL-F4 to close
(global-set-key [M-f4] 'save-buffers-kill-emacs)
(global-set-key [f12] 'my-speedbar-switch)
(global-set-key [f11] 'sr-speedbar-close)
(global-set-key [f5] 'maximize-frame)
(global-set-key [C-tab] 'other-frame)

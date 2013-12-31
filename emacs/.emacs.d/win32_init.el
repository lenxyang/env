
'(compile-command "ninja")

(scroll-bar-mode -1)
(menu-bar-mode 0)
(tool-bar-mode 0)   
(load-file "~/.emacs.d/mytheme.el")

; 设置默认字体
(set-face-attribute `default nil :font "Courier New 12")

; 设置启动后最大化
(defun maximize-frame () 
   "Maximizes the active frame in Windows" 
   (interactive) 
   ;; Send a `WM_SYSCOMMAND' message to the active frame with the 
   ;; `SC_MAXIMIZE' parameter. 
   (when (eq system-type 'windows-nt) 
     (w32-send-sys-command 61488))) 
(add-hook 'window-setup-hook 'maximize-frame t) 

; mouse select to copy

; mouse right-click to paste






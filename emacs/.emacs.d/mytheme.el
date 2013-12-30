(require 'color-theme)
(color-theme-initialize)
;(color-theme-classic)
;(color-theme-gnome2)
;(color-theme-ld-dark)

(defun color-theme-lenxyang ()
  "Example theme. Carbon copy of color-theme-gnome contributed by Jonadab."
  (interactive)
  (color-theme-install
   '(color-theme-lenxyang
     ((foreground-color . "wheat")
      (background-color . "black")
      (background-mode . dark))
     ; set font
     ;(default ((t (nil))))
     (default ((t (
		   :stipple nil :background "black" :foreground "grep80"
			    :inverse-video nil :box nil :strike-through nil
			    :overline nil :underline nil :slant normal
			    :weight bold :height 360 :width normal
			    :family "Courier New"))))
     (fixed ((t (:bold t))))
     (bold ((t (:bold t))))
     (italic ((t (:italic t))))
     (bold-italic ((t (:bold t :italic t))))
     (underline ((t (:underline t))))
     (region ((t (:foreground "gray95" :background "blue"))))
     (secondary-selection ((t (:background "grep 60"))))
     (underline ((t (:underline t))))
     (font-lock-builtin-face ((t (:bold t :foreground "cyan1" :bold t))))
     (font-lock-comment-face ((t (:foreground "IndianRed" :italic t))))
     (font-lock-constant-face ((t (:foreground "magenta3"))))
     (font-lock-doc-face ((t (:foreground "cyan"))))
     (font-lock-doc-string-face ((t (:foreground "light green"))))
     (font-lock-function-name-face ((t (:bold t :foreground "light green"))))
     (font-lock-keyword-face ((t (:foreground "cyan1" :bold t))))
     (font-lock-preprocessor-face ((t (:foreground "blue1"))))
     (font-lock-reference-face ((t (:foreground "purple1"))))
     (font-lock-string-face ((t (:foreground "LimeGreen" :italic t))))

     (font-lock-type-face ((t (:bold t :foreground "gray80"))))
     (font-lock-variable-name-face ((t (:bold t :foreground "gray80"))))
     (font-lock-warning-face ((t (:bold t :foreground "red" :weight bold))))

     (highlight ((t (:background "darkolivegreen"))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))

     ; mode line
     (mode-line ((t (:background "gray40" :foreground "gray90"))))
     (mode-line-inactive ((t (:backgro1und "gray16" :foreground "gray60"))))
     (modeline-buffer-id ((t (:background "gray16" :foreground "gray80"))))
     (modeline-mousable ((t (:background "gray16" :foreground "gray80"))))
     (modeline-mousable-minor-mode ((t (:background "gray16" :foreground "gray80" ))))
     )))

(color-theme-lenxyang)



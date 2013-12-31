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
      (font-lock-builtin-face ((t (:foreground "cyan1"))))
      (font-lock-comment-face ((t (:foreground "IndianRed" :italic t))))
      (font-lock-constant-face ((t (:foreground "magenta3"))))
      (font-lock-type-face ((t (:foreground "green"))))
      (font-lock-preprocessor-face ((t (:foreground "blue1"))))
      (font-lock-doc-face ((t (:foreground "cyan"))))
      (font-lock-doc-string-face ((t (:foreground "light green"))))
      (font-lock-function-name-face ((t (:foreground "light green"))))
      (font-lock-keyword-face ((t (:foreground "cyan1"))))
      (font-lock-reference-face ((t (:foreground "purple1"))))
      (font-lock-string-face ((t (:foreground "IndianRed"))))
      (font-lock-variable-name-face ((t (:foreground "gray80"))))
      (font-lock-warning-face ((t (:foreground "red"))))
     
      (default ((t (:stipple nil :background "black" :foreground "gray80"
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

      (highlight ((t (:background "darkolivegreen"))))
      (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
      (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))

      (mode-line ((t (:background "gray40" :foreground "gray90"
				  :box (:line-width -1 :style released-button)
				  :overline "gray60" :underline "gray60"))))
      (mode-line-inactive ((t (:italic t :underline "gray60"
				       :overline "gray60"
				       :background "gray16"
				       :foreground "cadetblue"
				       :box (:line-width -1 :color "grey75")
				       :slant oblique :weight light))))
      (modeline ((t (:background "gray40" :foreground "white" :box (:line-width -1 :style released-button) :overline "gray60" :underline "gray60"))))
      (modeline-buffer-id ((t (:background "gray16" :foreground "cyan1" :box (:line-width -1 :style released-button) :overline "gray60" :underline "gray60"))))
      (modeline-mousable ((t (:background "gray16" :foreground "cyan1" :box (:line-width -1 :style released-button) :overline "gray60" :underline "gray60"))))
      (modeline-mousable-minor-mode ((t (:background "gray16" :foreground "cyan1" :box (:line-width -1 :style released-button) :overline "gray60" :underline "gray60"))))
      )))

(color-theme-lenxyang)


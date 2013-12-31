
emacs:
	cp -nr emacs/.emacs.d/site-lisp/ ~/.emacs.d
	cp emacs/.emacs ~/.emacs
	cp emacs/.emacs.d/*.el ~/.emacs.d/

.PHONY: emacs

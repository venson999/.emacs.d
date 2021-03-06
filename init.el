(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-themes)
(require 'init-ido)
(require 'init-auto-complete)
(require 'init-yasnippet)
(require 'init-flycheck)
(require 'init-git)

(require 'init-python-mode)
(require 'init-javascript)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


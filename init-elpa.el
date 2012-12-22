(require 'package)

(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(require-package 'color-theme-sanityinc-solarized)
(require-package 'color-theme-sanityinc-tomorrow)
(require-package 'ido-ubiquitous)
(require-package 'smex)

;; package version in elpa is not up to date, manually install into ./site-lisp
;(require-package 'pymacs)
;(require-package 'python-mode)

(require-package 'flymake-cursor)
(require-package 'pyflakes)
(require-package 'flymake-python-pyflakes)
(require-package 'popup)
(require-package 'auto-complete)
(require-package 'yasnippet)
(require-package 'js2-mode)
(require-package 'magit)


(provide 'init-elpa)
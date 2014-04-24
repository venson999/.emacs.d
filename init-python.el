;; package version in elpa is not up to date, manually install into ./site-lisp
;(require-package 'pymacs)
;(require-package 'python-mode)
(require-package 'pyflakes)
(require-package 'flymake-python-pyflakes)

;; python-mode
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode) interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; pycomplete
(setq py-load-pymacs-p t)
(setq py-complete-set-keymap-p t)
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map [tab] 'indent-for-tab-command)))

;; pymacs
;(require 'pymacs)
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)

;; rope
;;(pymacs-load "ropemacs" "rope-")
;;(setq ropemacs-enable-autoimport t)

;; pyflakes
(eval-after-load 'python '(require 'flymake-python-pyflakes))
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

(provide 'init-python)


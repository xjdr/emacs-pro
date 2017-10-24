(use-package google-c-style
	:ensure t)

(use-package irony
	:ensure t
	:config
	(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package company-irony
	:ensure t
	:config
	(define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
	(define-key company-active-map [tab] 'company-complete-common-or-cycle)
	(add-to-list 'company-backends 'company-irony))

(use-package flycheck-irony
	:ensure t)

(use-package irony-eldoc
	:ensure t)

;; Load site-list
(message "Loading CMake Mode")
(load (pro "site-lisp/cmake-mode"))
(require 'cmake-mode)

(defun my-c++-mode-hook ()
	(google-set-c-style)
	(google-make-newline-indent))

(add-hook 'c++-mode-hook
	(lambda ()
		(irony-mode)
		(irony-eldoc)
		(company-mode)
		(flycheck-mode)
		(my-c++-mode-hook)
		(editorconfig-mode)))

(provide 'c++)

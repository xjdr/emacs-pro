(use-package google-c-style
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
            (flycheck-mode)
            (my-c++-mode-hook)
            (editorconfig-mode)))

(provide 'c++)

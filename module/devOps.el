;;; devOps.el -- Basic devOps packages


;; Load site-list
(message "Loading Site Lisp")
(load (pro "site-lisp/dockerfile-mode"))

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; (defun docker-mode
;;   "Enable three minor modes for neat text."
;;   (flyspell-mode)
;;   (auto-fill-mode)
;;   (set-fill-column 80))

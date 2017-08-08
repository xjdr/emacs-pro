;;; init.el --- Emacs Pro's entry point


;;; Commentary:


;;; Code:
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; home sweet home
(defun pro (filename)
  "Expand FILENAME relative to the user's Emacs dir."
  (expand-file-name filename user-emacs-directory))

;; Load modules
(load (pro "core/defaults"))
(load (pro "core/ui"))
(load (pro "core/ido"))
(load (pro "core/eshell"))
(load (pro "core/keybindings"))

(load (pro "core/osx"))
(load (pro "core/linux"))

(load (pro "core/package"))

;; Primary Devloper Mode
(load (pro "module/dev") 'missing-ok)

;; Modules
(load (pro "module/c") 'missing-ok)
(load (pro "module/go") 'missing-ok)
(load (pro "module/c++") 'missing-ok)
(load (pro "module/web") 'missing-ok)
(load (pro "module/java") 'missing-ok)
(load (pro "module/python") 'missing-ok)
(load (pro "module/clojure") 'missing-ok)

;; Themes
;(load (pro "theme/zenburn"))
;(load (pro "theme/hipster"))
(load (pro "theme/solarized"))
;;; init.el ends here

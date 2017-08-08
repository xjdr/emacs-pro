;;  init.el
;;  xjdr - here be dragons and whatnot


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; home sweet home
(defun pro (filename)
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
(load (pro "module/java") 'missing-ok)
(load (pro "module/python") 'missing-ok)
(load (pro "module/clojure") 'missing-ok)

;; Themes
;(load (pro "theme/zenburn"))
;(load (pro "theme/hipster"))
(load (pro "theme/solarized"))

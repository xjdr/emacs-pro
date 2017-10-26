;;; init.el --- Emacs Pro's entry point


;;; Commentary:


;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.	Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; home sweet home
(defun pro (filename)
  "Expand FILENAME relative to the user's Emacs dir."
  (expand-file-name filename user-emacs-directory))

;; Load core modules
(message "Loading Core Modules")
(load (pro "core/defaults"))
(load (pro "core/ui"))
(load (pro "core/ido"))
(load (pro "core/eshell"))
(load (pro "core/keybindings"))
(load (pro "core/osx"))
(load (pro "core/linux"))
(load (pro "core/package"))

;; Primary Devloper Mode
(message "Loading Developer Module")
(load (pro "module/dev") 'missing-ok)
(load (pro "module/devOps") 'missing-ok)

;; Language Modules
(message "Loading Language Modules")
(load (pro "module/c") 'missing-ok)
(load (pro "module/go") 'missing-ok)
(load (pro "module/c++") 'missing-ok)
(load (pro "module/web") 'missing-ok)
(load (pro "module/java") 'missing-ok)
(load (pro "module/python") 'missing-ok)
;; (load (pro "module/clojure") 'missing-ok) ;; This is very heavy, and should be left off unless needed
(load (pro "module/protobuf") 'missing-ok)

;; Emacs Modules
(message "Loading Emacs Modules")
(load (pro "module/org") 'missing-ok)

;; Themes
(message "Loading Theme")
(load (pro "theme/hipster"))
;(load (pro "theme/zenburn"))
;(load (pro "theme/molokai"))
;(load (pro "theme/solarized-light"))
;(load (pro "theme/solarized-dark"))

;;; init.el ends here

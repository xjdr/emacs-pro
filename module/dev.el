;; Compiler
;; colorize the output of the compilation mode.
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))

  ;; mocha seems to output some non-standard control characters that
  ;; aren't recognized by ansi-color-apply-on-region, so we'll
  ;; manually convert these into the newlines they should be.
  (goto-char (point-min))
  (while (re-search-forward "�\\[2K�\\[0G" nil t)
    (progn
      (replace-match "
")))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)


;; Packages
(use-package ag
  :ensure t
  :defer t
  :config
  (setq ag-highlight-search t))

(use-package editorconfig
  :ensure t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))


(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-c g") 'magit-status))

(use-package markdown-mode
  :ensure t)

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init
  (setq projectile-enable-caching t
        projectile-cache-file (pro "var/projectile.cache")
        projectile-known-projects-file (pro "var/projectile-bookmarks.eld")))


(use-package yaml-mode
  :ensure t)


(provide 'dev)
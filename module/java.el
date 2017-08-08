(use-package google-c-style
  :ensure t)

(flycheck-define-checker infer
  "A Java syntax and style checker using infer.
See URL http://fbinfer.com/"
  :command ("infer" "--" "mvn" "-f"
            (eval (-> (projectile-project-root)
                      (concat "pom.xml")
                      (expand-file-name)))
            "compile")
  :error-patterns
  ((error line-start (file-name) ":" line ":" " error:" (message) line-end)
   (warning line-start (file-name) ":" line ":" " warning:" (message) line-end)
   (info line-start (file-name) ":" line ":" " info:" (message) line-end))
  :modes java-mode)


(flycheck-define-checker mvn
  "A Maven Java synax checker."
  :command ("mvn" "-f"
            (eval (-> (projectile-project-root)
                      (concat "pom.xml")
                      (expand-file-name)))
            "compile")
  :error-patterns ((error line-start "[ERROR] " (file-name) ":[" line "," column "]"
                          (message) line-end)
                   (warning line-start "[WARNING] " (file-name) ":[" line "," column "]"
                            (message) line-end))
  :modes java-mode)

(eval-after-load 'flycheck
  '(add-to-list 'flycheck-checkers 'mvn 'infer))

(add-hook 'java-mode-hook
          (lambda ()
            (google-set-c-style)
            (google-make-newline-indent)
            (setq-local compilation-environment (list
                                                 (concat "FILE_NAME=" (buffer-file-name))
                                                 (concat "NOINFER=" (if java-use-infer "" "1"))))
            (editorconfig-mode)
            (flycheck-mode)
            (setq flycheck-checker 'mvn)))

(provide 'java)

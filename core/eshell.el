;; eshell
(defun curr-dir-git-branch-string (pwd)
  "Returns current git branch as a string, or the empty string if
PWD is not in a git repo (or the git command is not found)."
  (interactive)
  (when (and (eshell-search-path "git")
             (locate-dominating-file pwd ".git"))
    (let ((git-output (shell-command-to-string (concat "cd " pwd " && git branch | grep '\\*' | sed -e 's/^\\* //'"))))
      (propertize (concat " ["
                          (if (> (length git-output) 0)
                              (substring git-output 0 -1)
                            "(no branch)")
                          "]") 'face `(:foreground "#3F00FF"))
      )))

(setq eshell-prompt-function (lambda nil
                               (concat
                                (propertize (eshell/pwd) 'face `(:foreground "#A074C4"))
                                (or (curr-dir-git-branch-string (eshell/pwd)))
                                (propertize " $ " 'face `(:foreground "black")))))

(setq eshell-highlight-prompt nil)

(fset 'eshell-on
      "\C-x3\C-xo\M-xeshell")

(fset 'eshell-off
      "\C-x0")

(defun toggle-eshell ()
  (interactive)
  (if (string= "eshell-mode" (eval 'major-mode))
      (execute-kbd-macro (symbol-function 'eshell-off))
    (execute-kbd-macro (symbol-function 'eshell-on))))

(provide 'eshell)

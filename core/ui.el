;; Set ui

(setq inhibit-splash-screen t
      ring-bell-function 'ignore)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(set-fringe-mode 0)
(unless window-system
  (menu-bar-mode 0))
(fset 'yes-or-no-p 'y-or-n-p)

(if window-system
    ()
(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "#111111" :foreground "White"))))
 '(font-lock-warning-face ((nil (:foreground "#ff6666"))))
 '(highlight ((((class color) (min-colors 88) (background dark)) (:background "#111111"))))
 '(hl-line ((nil (:background "#222222"))))
 '(region ((nil (:background "#657489"))))
 '(show-paren-match ((nil (:background "#1793d0"))))
 '(show-paren-mismatch ((((class color)) (:background "red")))))

(set-face-attribute 'mode-line nil
   :foreground "#1793d0"
   :background "Black"
   :box '(:line-width 6 :color "Black" :style nil))

(set-face-attribute 'mode-line-inactive nil
   :foreground "#1793d0"
   :background "#222222"
   :box '(:line-width 6 :color "#22222" :style nil))
)

(provide 'pro-ui)

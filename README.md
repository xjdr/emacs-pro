emacs pro
=========

This is a configurable emacs configuration with the express intent of providing a simple and extensible system for a professional software developer.

## Sane Defaults

## Development Module
 - ag
 - editorconfig
 - flycheck
 - magit
 - markdown-mode
 - projectile
 - yaml-mode

## Language Modules
 - c
 - go
 - c++
 - web
 - java
 - python
 - clojure

## Default Keybindings

Keybinding         | Description
-------------------|------------------------------------------------------------
(kbd "C-x C-b")    | 'ibuffer)
(kbd "C-x t")      | 'toggle-eshell)
(kbd "s-<return>") | 'toggle-frame-fullscreen)
(kbd "s-/")        | 'comment-or-uncomment-region)
(kbd "M-/")        | 'hippie-expand)
(kbd "C-c C-c")    | 'compile)
(kbd "C-c C-t")    | (lambda () (interactive) (compile "make -k test")))

## Module Keybindings

Keybinding         | Description
-------------------|------------------------------------------------------------
(kbd "C-c g")      | 'magit-status)

;(load "~/.emacs.d/pkgs/omnibox/omnibox.el")
(use-package omnibox
  :config
  (global-set-key (kbd "M-x") 'omnibox-M-x)
  (omnibox-setup))

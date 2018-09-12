(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("original"    . "http://tromey.com/elpa/")
        ("org"         . "http://orgmode.org/elpa/")
        ("melpa"       . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Set custom file for output from customize commands
(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load "~/.emacs.d/pkgs/keybinds.el")
(load "~/.emacs.d/pkgs/package.el")
(load "~/.emacs.d/pkgs/smex.el")
(load "~/.emacs.d/pkgs/dimmer.el")
(load "~/.emacs.d/pkgs/company.el")
(load "~/.emacs.d/pkgs/ido.el")
(load "~/.emacs.d/pkgs/magit.el")
(load "~/.emacs.d/pkgs/projectile.el")
(load "~/.emacs.d/pkgs/telephone-line.el")
(load "~/.emacs.d/pkgs/undo-tree.el")
(load "~/.emacs.d/pkgs/haskell-mode.el")
(load "~/.emacs.d/pkgs/haskell-ext.el")
(load "~/.emacs.d/pkgs/hasklig.el")
(load "~/.emacs.d/pkgs/org-mode.el")
(load "~/.emacs.d/pkgs/org-ref.el")

;;
;; Ad hoc config below
;;

(setq inhibit-startup-screen t)

;; Remove clutter
(menu-bar-no-scroll-bar)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; Wrap words
(global-visual-line-mode t)

;; Open links in firefox 
(setq browse-url-browser-function 'browse-url-firefox
      browse-url-new-window-flag  t
      browse-url-firefox-new-window-is-tab t)

(load-theme 'darktooth t)

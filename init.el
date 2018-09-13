;; Set up package 
(require 'package)
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

;;
;; Load packages with their config
;;

(load "~/.emacs.d/pkgs/keybinds.el")
(load "~/.emacs.d/pkgs/dashboard.el")
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
(load "~/.emacs.d/pkgs/org-mode.el")
(load "~/.emacs.d/pkgs/org-ref.el")
(load "~/.emacs.d/pkgs/org-gcal.el")
(load "~/.emacs.d/pkgs/hidden-mode-line.el")

;;
;; Ad hoc config below
;;
(setq inhibit-startup-screen t)

;; Do not clutter everything with .file~
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

;; Remove clutter
(menu-bar-no-scroll-bar)
(tool-bar-mode 0)
(menu-bar-mode 0)
(set-face-attribute 'vertical-border
		    nil
		    :foreground "#282828")

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

;; Header line save stuff
(defun update-header-line ()
  (if (not (equal (buffer-name) "*dashboard*"))
      (setq header-line-format
	    (concat (propertize " " 'display '((space :align-to 30)))
		    (buffer-name)
		    (if (buffer-modified-p) " - unsaved")))))

(add-hook 'after-change-functions (lambda (&rest args) (update-header-line)))
(add-hook 'buffer-list-update-hook 'update-header-line)
(add-hook 'after-save-hook 'update-header-line)
 
;; To match header line
(fringe-mode '(17 . 17))

;; Since they don't dim, don't show them
(setq-default cursor-in-non-selected-windows nil)

;; Darktooth <3
(load-theme 'darktooth t)

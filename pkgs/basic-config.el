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

;; Line spacing
(setq-default line-spacing 3)

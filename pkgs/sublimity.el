(load "~/.emacs.d/pkgs/sublimity/sublimity.el")
(load "~/.emacs.d/pkgs/sublimity/sublimity-scroll.el")
;(load "~/.emacs.d/pkgs/sublimity/sublimity-attractive.el")

(require 'sublimity)
(require 'sublimity-scroll)
;(require 'sublimity-attractive)

(setq sublimity-scroll-weight 1
      sublimity-scroll-drift-length 8)

(sublimity-mode 1)


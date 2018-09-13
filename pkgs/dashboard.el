(require 'dashboard)
(dashboard-setup-startup-hook)

(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
(setq dashboard-banner-logo-title "")
(setq dashboard-startup-banner "~/.emacs.d/images/lambda.png")
(add-to-list 'dashboard-items '(agenda) t)
(setq show-week-agenda-p t)

(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
			(agenda . 5)
                        (projects . 5)))

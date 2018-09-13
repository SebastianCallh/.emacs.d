(require 'org-gcal)

(load "~/.emacs.d/secret/org-gcal-secrets.el") 
(setq org-gcal-file-alist
      '(("t377lbbp1qucc267fq4957krb7langpe@import.calendar.google.com" .  "~/org/cal/schedule.org")
	("6f72rkup96etebb0a0e0nk5a2o@group.calendar.google.com" .  "~/org/cal/spare-time.org")
	("6rvcin1ktdh68ictmeuk4h39l4@group.calendar.google.com" . "~/org/cal/self-study.org")        
	("pippr22reu69qqm7vqirj126o4@group.calendar.google.com" .  "~/org/cal/tdde15.org")
	("iof5g7t7bl4jb39dd47uekdhsc@group.calendar.google.com" .  "~/org/cal/vvp.org")
	))

;; Sync on loading agenda and when capturing
(add-hook 'org-agenda-mode-hook (lambda () (org-gcal-sync) ))
(add-hook 'org-capture-after-finalize-hook (lambda () (org-gcal-sync) ))

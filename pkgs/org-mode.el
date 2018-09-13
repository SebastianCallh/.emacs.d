(transient-mark-mode 1)
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "|" "ABANDONED(b)" "DONE(d)"))))
(setq org-log-done t)

(setq org-agenda-files (list "~/org/cal/schedule.org"
			     "~/org/cal/spare-time.org"
			     "~/org/cal/self-study.org"
			     "~/org/cal/tdde15.org"
			     "~/org/cal/vvp.org"
			     "~/org/vvp.org"
                             "~/org/tdde19.org"
			     "~/org/master-explorer.org"
			     "~/org/course-scalpel.org"))

;; active Babel languages
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)))

;; Org capture
(setq org-default-notes-file (concat org-directory "/remember.org"))
(define-key global-map "\C-cr" 'org-capture)

(global-set-key (kbd "C-c a") 'org-agenda)

(require 'org)


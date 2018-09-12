(require 'company)

(setq company-idle-delay 0.1)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 3)
(setq company-tooltip-flip-when-above t)

(add-hook 'after-init-hook 'global-company-mode)

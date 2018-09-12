(require 'haskell-interactive-mode)
(require 'haskell-process)

(setq tags-revert-without-query 1)
(setq haskell-tags-on-save t)
(setq haskell-stylish-on-save t)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))


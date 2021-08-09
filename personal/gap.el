(prelude-require-packages '(lsp-treemacs))

(lsp-mode 1)

(lsp-treemacs-sync-mode 1)

(desktop-save-mode 1)

(savehist-mode 1)

(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

(defun change-lsp-prefix ()
  "GAP: this is my fn to change the prefix for lsp-mode from
'Super-l' to 'Super-t' since 'Super-l' is captured by Ubuntu and
locks the screen."
  (global-set-key (kbd "s-t") (lookup-key lsp-mode-map (kbd "s-l")))
  )


(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)


(change-lsp-prefix)

(desktop-save-mode 1)

;(require 'lsp-treemacs)
;; Where to store the cider history.
;(setq cider-repl-history-file "~/.emacs.d/cider-history")
(setq cider-repl-history-file ".cider-history")
(setq cider-repl-require-ns-on-set t)

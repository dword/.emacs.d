(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/home/dw/.emacs.d/bookmarks")
 '(calendar-date-style (quote european))
 '(calendar-week-start-day 1)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(global-company-mode t)
 '(global-linum-mode t)
 '(haskell-mode-hook (quote (turn-on-eldoc-mode turn-on-haskell-decl-scan turn-on-haskell-doc turn-on-haskell-indentation structured-haskell-mode)))
 '(ibuffer-expert t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-mode-hook (quote (org-bullets-mode)) t)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; —————————————————————————————————————————————————————————————————————
(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)
(add-hook 'after-init-hook 'global-company-mode)
;; —————————————————————————————— company ——————————————————————————————
(setq company-show-numbers t)

(eval-after-load "haskell-mode"
	'(progn
		 (require 'company-ghc)
		 (add-to-list 'company-backends 'company-ghc)))

;; —————————————————————————————— my keys ——————————————————————————————
(global-set-key (kbd "C-c b")      'ibuffer)
(global-set-key (kbd "C-c i")      'ido-mode)
(global-set-key (kbd "C-c m")      'menu-bar-mode)
(global-set-key (kbd "C-c l")      'linum-mode)
(global-set-key (kbd "C-c d")      'dired)
(global-set-key (kbd "C-c k")      'kill-this-buffer)
(global-set-key (kbd "C-<tab>")    'next-buffer)
(global-set-key (kbd "M-<left>")   'previous-buffer)
(global-set-key (kbd "M-<right>")  'next-buffer)
(global-set-key (kbd "C-`")        'other-window)
(global-set-key (kbd "<f1>")       'company-complete)

(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; (defun echo (l)
;; 	(interactive)
;; 	(message l))

;; (echo haskell-mode-hook)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(calendar-date-style (quote european))
 '(calendar-week-start-day 1)
 '(custom-enabled-themes (quote (wombat)))
 '(global-linum-mode t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'org-mode-hook 'org-bullets-mode)

(global-set-key (kbd "C-c b") 'ibuffer)
(global-set-key (kbd "C-c i") 'ido-mode)
(global-set-key (kbd "C-c m") 'menu-bar-mode)
(global-set-key (kbd "C-c l") 'linum-mode)
(global-set-key (kbd "C-c d") 'dired)
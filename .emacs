(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20150618.1949")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode-20151001.634")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-better-scroll")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-hl-nicks-20140619.522")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20151012.728")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape-20150926.2152")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20150903.1940")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20150817.2318")
(add-to-list 'load-path "~/.emacs.d/elpa/go-play-20120914.1248")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg-20131228.659")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20150626.711")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140509.522")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20151011.1823")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/cyberpunk-theme-20150828.508")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/gruvbox-theme-20150729.341")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme-20151014.304")

(load-theme 'gruvbox t)
;; cyberpunk
;; gruvbox
;; monokai

(setq c-basic-offset 2)
(setq-default tab-width 2)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
;;(global-linum-mode t)
(blink-cursor-mode -1)
(set-fringe-mode 0)
(blink-cursor-mode 0)
(show-paren-mode 1)
(electric-indent-mode 1)
(visual-line-mode 1)
(glasses-mode 1)

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
(global-set-key (kbd "M-j") 'other-window)
(global-set-key (kbd "M-k") 'next-buffer)
(global-set-key (kbd "M-l") 'previous-buffer)
(global-set-key (kbd "M-m") 'evil-escape)
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<down>") 'shrink-window)
(global-set-key (kbd "C-<up>") 'enlarge-window)

(add-hook 'go-mode-hook              ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'java-mode-hook            ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'python-mode-hook          ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'c-mode-hook               ; other modes similarly
          '(lambda () (hs-minor-mode 1)))

(require 'evil)
(evil-mode 1)
(require 'evil-escape)

(require 'yasnippet)
(yas-global-mode 1)

(require 'go-mode)
(require 'go-autocomplete)

(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode 1)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

(require 'centered-cursor-mode)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

(require 'erc)
(setq erc-save-buffer-on-part t)
(setq erc-log-channels-directory "~/.erc/logs/")
(setq erc-save-buffer-on-part t)
(setq erc-server "irc.freenode.net")
(erc-autojoin-mode 1)
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                 "324" "329" "332" "333" "353" "477"))
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
(add-to-list 'erc-autojoin-channels-alist
						 '(".*freenode.net" "##programming" "#go-nuts"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search nil)
 '(erc-autojoin-domain-only t)
 '(erc-autojoin-mode t)
 '(erc-nick "pressure679")
 '(erc-nick-uniquifier "pressure679")
 '(erc-port 6667)
 '(erc-prompt-for-password t)
 '(erc-system-name "pressure679")
 '(erc-user-full-name "pressure679")
 '(inhibit-startup-screen t)
 '(linum-format "%d| "))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "color-235"))))
 '(menu ((t nil)))
 '(mode-line ((t (:background "color-243" :foreground "color-235" :box nil))))
 '(mode-line-inactive ((t (:background "color-239" :foreground "color-246" :box nil))))
 '(popup-face ((t (:foreground "black"))))
 '(show-paren-match ((t (:foreground "green"))))
 '(speedbar-separator-face ((t (:foreground "white" :overline "gray"))) t)
 '(tool-bar ((t (:foreground "black"))))
 '(w3m-header-line-location-content ((t (:foreground "DarkGoldenrod"))))
 '(w3m-header-line-location-title ((t (:foreground "Blue"))))
 '(w3m-history-current-url ((t (:foreground "navy"))))
 '(w3m-tab-background ((t (:foreground "black"))))
 '(w3m-tab-selected ((t (:foreground "navy"))))
 '(w3m-tab-unselected ((t (:foreground "darkgreen")))))

(require 'server)
(unless (server-running-p)
  (server-start))


(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20160310.2248")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode-20151001.634")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-better-scroll")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-hl-nicks-20160202.1150")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20160310.1023")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape-20151214.1111")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-go-20150714.33")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-cursor-20130822.332")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20150903.1940")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20160310.1044")
(add-to-list 'load-path "~/.emacs.d/elpa/go-play-0.0.1")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg-20131228.659")
(add-to-list 'load-path "~/.emacs.d/elpa/hlinum-1.0")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20151222.1339")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20160226.1359")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140509.522")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/cyberpunk-theme-20160121.1712")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/gruvbox-theme-20151227.113")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme-20160104.1312")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/solarized-theme-20160106.15")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/zenburn-theme-20160302.58")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-20080305.34/themes")

(load-theme 'gruvbox t)
;; cyberpunk
;; gruvbox
;; solarized-dark
;; monokai
;; zenburn

(setq backup-directory-alist
			`((".emacs.d/auto-save" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
			          `((".emacs.d/auto-save" ,temporary-file-directory t)))

(setq auto-save-mode 1
			auto-save-interval 120
			auto-save-timeout 119
			default tab-width 2
			linum-format "  %d "
			ac-auto-show-menu nil)
(c-basic-offset 2)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)
(blink-cursor-mode -1)
(set-fringe-mode 0)
(blink-cursor-mode 0)
(show-paren-mode 1)
(electric-indent-mode 1)
(global-visual-line-mode 1)
(linum-mode 1)
(ac-linum-workaround)
;; (glasses-mode 1)

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
(global-set-key (kbd "C-M-h") 'hs-hide-all)
(global-set-key (kbd "M-j") 'other-window)
(global-set-key (kbd "M-k") 'next-buffer)
(global-set-key (kbd "M-l") 'previous-buffer)
(global-set-key (kbd "M-m") 'evil-escape)
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<up>") 'shrink-window)
(global-set-key (kbd "C-<down>") 'enlarge-window)

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

(require 'flymake-cursor)

(require 'go-mode)
(require 'go-autocomplete)
(require 'flymake-go)

(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode 1)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(setq ac-auto-show-menu nil)

(require 'cl)
(require 'yasnippet)
(yas-global-mode 1)

(require 'centered-cursor-mode)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

(require 'hlinum)

(defun on-after-init ()
	(unless (display-graphic-p (selected-frame))
		(set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

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
;; '(custom-safe-themes
;;	 (quote
;;		("71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" default)))
 '(erc-autojoin-domain-only t)
 '(erc-autojoin-mode t)
 '(erc-nick "pressure679")
 '(erc-nick-uniquifier "pressure679")
 '(erc-password "oauth:nzwautavo7yi0m1yo89dslvfzkich5" t)
 '(erc-port 6667)
 '(erc-prompt-for-password t)
 '(erc-server "irc.twitch.tv")
 '(erc-system-name "pressure679")
 '(erc-user-full-name "pressure679")
 '(fci-rule-color "#073642")
 '(fringe-mode nil nil (fringe))
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(linum-format " %d  ")
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "unspecified-bg" :foreground "default"))))
 '(ac-candidate-face ((t (:foreground "gray"))))
 '(ac-gtags-candidate-face ((t (:foreground "navy"))))
 '(ac-gtags-selection-face ((t (:foreground "gray"))))
 '(ac-selection-face ((t (:foreground "navy"))))
 '(ac-yasnippet-selection-face ((t (:inherit ac-selection-face :foreground "darkgreen"))))
 '(fringe ((t (:background nil :foreground "#DCDCCC"))))
 '(linum ((t (:background "unspecified-bg" :foreground "#9FC59F"))))
 '(linum-highlight-face ((t (:foreground "d65d0e"))))
 '(menu ((t (:background nil))))
 '(mode-line ((t (:foreground "color-235" :box nil))))
 '(mode-line-inactive ((t (:background nil :foreground "color-246" :box nil))))
 '(popup-face ((t (:foreground "darkgreen"))))
 '(popup-isearch-match ((t (:foreground "#ff1493"))))
 '(popup-menu-face ((t (:foreground "darkgreen"))))
 '(popup-menu-mouse-face ((t (:foreground "white"))))
 '(popup-menu-selection-face ((t (:foreground "white"))))
 '(popup-scroll-bar-background-face ((t nil)))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:foreground "#ffffff"))))
 '(region ((t (:background "unspecified-bg" :foreground "DarkGoldenRod"))))
 '(show-paren-match ((t (:foreground "darkgreen"))))
 '(speedbar-separator-face ((t (:foreground "white" :overline "gray"))) t)
 '(tool-bar ((t (:background nil :foreground "black"))))
 '(w3m-header-line-location-content ((t (:foreground "#a89984"))) t)
 '(w3m-header-line-location-title ((t (:foreground "darkgreen"))) t)
 '(w3m-history-current-url ((t (:foreground "darkgreen"))) t)
 '(w3m-tab-background ((t (:foreground "black"))) t)
 '(w3m-tab-selected ((t (:foreground "darkgreen"))) t)
 '(w3m-tab-unselected ((t (:foreground "darkgreen"))) t))

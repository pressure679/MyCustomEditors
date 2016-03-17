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
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20150903.1940")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20160310.1044")
(add-to-list 'load-path "~/.emacs.d/elpa/go-play-0.0.1")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg-20131228.659")
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
;; monokai
;; solarized
;; zenburn

(setq c-basic-offset 2)
(setq-default tab-width 2)
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
(setq ac-auto-show-menu nil)
;; (glasses-mode 1)

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

(require 'go-mode)
(require 'go-autocomplete)

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
 '(inhibit-startup-screen t)
 '(linum-format "%d ")
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(ac-candidate-face ((t (:foreground "gray"))))
 '(ac-gtags-candidate-face ((t (:foreground "navy"))))
 '(ac-gtags-selection-face ((t (:foreground "gray"))))
 '(ac-selection-face ((t (:foreground "navy"))))
 '(ac-yasnippet-selection-face ((t (:inherit ac-selection-face :foreground "navy"))))
 '(fringe ((t (:background "color-235"))))
 '(linum ((t (:inherit (\#00cc00 default)))))
 '(menu ((t nil)))
 '(mode-line ((t (:foreground "color-235" :box nil))))
 '(mode-line-inactive ((t (:background "color-239" :foreground "color-246" :box nil))))
 '(popup-face ((t (:foreground "navy"))))
 '(popup-isearch-match ((t (:foreground "#ff1493"))))
 '(popup-menu-face ((t (:inherit popup-face :foreground "navy"))))
 '(popup-menu-mouse-face ((t (:foreground "white"))))
 '(popup-menu-selection-face ((t (:foreground "white"))))
 '(popup-scroll-bar-background-face ((t nil)))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:foreground "#ffffff"))))
 '(show-paren-match ((t (:foreground "green"))))
 '(speedbar-separator-face ((t (:foreground "white" :overline "gray"))) t)
 '(tool-bar ((t (:foreground "black"))))
 '(w3m-header-line-location-content ((t (:foreground "DarkGoldenrod"))) t)
 '(w3m-header-line-location-title ((t (:foreground "Blue"))) t)
 '(w3m-history-current-url ((t (:foreground "navy"))) t)
 '(w3m-tab-background ((t (:foreground "black"))) t)
 '(w3m-tab-selected ((t (:foreground "navy"))) t)
 '(w3m-tab-unselected ((t (:foreground "darkgreen"))) t))

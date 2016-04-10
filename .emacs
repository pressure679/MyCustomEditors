(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode")
(add-to-list 'load-path "~/.emacs.d/elpa/dash")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-better-scroll")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-hl-nicks")
(add-to-list 'load-path "~/.emacs.d/elpa/evil")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-cursor")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-go")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg")
(add-to-list 'load-path "~/.emacs.d/elpa/hlinum")
(add-to-list 'load-path "~/.emacs.d/elpa/popup")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")

(add-to-list 'load-path "~/.emacs.d/elpa/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/themes")

(load-theme 'gruvbox t)
;; cyberpunk
;; gruvbox
;; solarized-dark
;; monokai
;; zenburn

;; (add-to-list 'default-frame-alist '(foreground-color . "#A89984"))
;; (add-to-list 'default-frame-alist '(foreground-color . "unspecified-fg"))
;; (add-to-list 'default-frame-alist '(background-color . "unspecified-bg"))

(defvar my-auto-save-folder "~/.emacs.d/auto-save/")
(setq auto-save-list-file-prefix "~/.emacs.d/auto-save/save-")
(setq auto-save-file-name-transforms `((".*" ,my-auto-save-folder t)))
(setq tramp-auto-save-directory my-auto-save-folder)

(setq auto-save-mode 1)
(setq auto-save-interval 120)
(setq auto-save-timeout 119)
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
;; (ac-linum-workaround)
(setq ac-auto-show-menu nil)
(setq-default cursor-type 'bar)

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
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(linum-format "%d ")
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :foreground "color-246" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(ac-candidate-face ((t (:background nil :foreground "color-246"))))
 '(ac-candidate-mouse-face ((t (:background nil :foreground "color-246"))))
 '(ac-completion-face ((t (:background nil :foreground "color-246"))))
 '(ac-gtags-candidate-face ((t (:background nil :foreground "color-246"))))
 '(ac-gtags-selection-face ((t (:background nil :foreground "color-246"))))
 '(ac-selection-face ((t (:background nil :foreground "white"))))
 '(ac-yasnippet-candidate-face ((t (:background nil :foreground "color-246"))))
 '(ac-yasnippet-selection-face ((t (:background nil :foreground "color-246"))))
 '(cursor ((t (:background nil :foreground "color-246"))))
 '(fringe ((t (:background nil :foreground "color-246"))))
 '(linum ((t (:background nil :foreground "darkgreen"))))
 '(linum-highlight-face ((t (:background nil :foreground "red"))))
 '(menu ((t (:background nil))))
 '(mode-line ((t (:background nil :foreground "color-246" :box nil :overline nil :underline nil))))
 '(mode-line-inactive ((t (:background nil :foreground "color-235" :box nil :overline nil :underline nil))))
 '(popup-face ((t (:background nil :foreground "color-246"))))
 '(popup-isearch-match ((t (:background nil :foreground "color-246"))))
 '(popup-menu-face ((t (:background nil :foreground "color-246"))))
 '(popup-menu-mouse-face ((t (:background nil :foreground "color-246"))))
 '(popup-menu-selection-face ((t (:background nil :foreground "color-246"))))
 '(popup-scroll-bar-background-face ((t nil)))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:foreground "color-246"))))
 '(region ((t (:background nil :foreground "darkgreen"))))
 '(show-paren-match ((t (:background nil :foreground "red"))))
 '(speedbar-separator-face ((t (:foreground "color-246" :overline "default"))) t)
 '(tool-bar ((t (:background nil :foreground "green"))))
 '(w3m-header-line-location-content ((t (:background nil :foreground "color-246"))) t)
 '(w3m-header-line-location-title ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-history-current-url ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-tab-background ((t (:background nil :foreground "green"))) t)
 '(w3m-tab-selected ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-tab-unselected ((t (:background nil :foreground "darkgreen"))) t)
 '(yas-field-highlight-face ((t :background nil :foreground "color-246"))))

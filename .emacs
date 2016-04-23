(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
;; (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode")
(add-to-list 'load-path "~/.emacs.d/elpa/dash")
(load-file "~/.emacs.d/elpa/erc-better-scroll/erc-better-scroll.el")
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
(add-to-list 'load-path "~/.emacs.d/elpa/vlf")
(add-to-list 'load-path "~/.emacs.d/elpa/xclip")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/themes")

(load-theme 'gruvbox t)
;; gruvbox
;; cyberpunk
;; solarized-dark

;; (add-to-list 'default-frame-alist '(foreground-color . "#A89984"))
;; (add-to-list 'default-frame-alist '(foreground-color . "unspecified-fg"))
;; (add-to-list 'default-frame-alist '(background-color . "unspecified-bg"))

(defvar my-auto-save-folder "~/.emacs.d/auto-save/")
(setq auto-save-list-file-prefix "~/.emacs.d/auto-save/save-")
(setq auto-save-file-name-transforms `((".*" ,my-auto-save-folder t)))
(setq tramp-auto-save-directory my-auto-save-folder)

(setq auto-save-mode t)
(setq auto-save-interval 120)
(setq auto-save-timeout 119)
(setq c-basic-offset 2)
(setq-default tab-width 2)
(scroll-bar-mode nil)
(menu-bar-mode nil)
(tool-bar-mode nil)
(global-linum-mode t)
(blink-cursor-mode nil)
(set-fringe-mode 0)
(blink-cursor-mode 0)
(show-paren-mode t)
(electric-indent-mode t)
(linum-mode t)
(setq-default cursor-type 'bar)
(setq ac-set-trigger-key "TAB")

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
(global-set-key (kbd "C-M-h") 'hs-hide-all)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-p") 'previous-buffer)
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

;; Single char cursor movement
(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'previous-line)
(global-set-key (kbd "M-j") 'next-line)

;; Move by word
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "M-e") 'forward-word)

;; Move to beginning/ending of line
;; (global-unset-key (kbd "M-S-I"))
;; (global-set-key (kbd "M-S-I") 'evil-move-beginning-of-line)
;; (global-unset-key (kbd "M-S-A"))
;; (global-set-key (kbd "M-S-A") 'evil-move-end-of-line)

(global-unset-key (kbd "M-d"))
(global-set-key (kbd "M-d M-b") 'backward-kill-word)
(global-set-key (kbd "M-d M-e") 'kill-word)

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
(ac-linum-workaround)

(require 'cl)
(require 'yasnippet)
(yas-global-mode 1)

(require 'centered-cursor-mode)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

(require 'hlinum)
(hlinum-activate)

(require 'xclip)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

(require 'erc)
(require 'erc-hl-nicks)
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
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
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
 '(linum-format "  %d ")
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(ac-candidate-face ((t (:background nil :foreground "#006700"))))
 '(ac-candidate-mouse-face ((t (:background nil :foreground "#006700"))))
 '(ac-completion-face ((t (:background nil :foreground "color-246"))))
 '(ac-gtags-candidate-face ((t (:background nil :foreground "#006700"))))
 '(ac-gtags-selection-face ((t (:background nil :foreground "#006700"))))
 '(ac-selection-face ((t (:background nil :foreground "white"))))
 '(ac-yasnippet-candidate-face ((t (:background nil :foreground "#006700"))))
 '(ac-yasnippet-selection-face ((t (:background nil :foreground "#006700"))))
 '(buffer-menu-buffer ((t nil)))
 '(cursor ((t (:background nil :foreground "color-246"))))
 '(fringe ((t (:background nil :foreground "color-246"))))
 '(linum ((t (:background nil :foreground "color-246"))))
 '(linum-highlight-face ((t (:background nil :foreground "#D79921"))))
 '(menu ((t (:background nil))))
 '(minibuffer-prompt ((t (:background nil :foreground "#afaf00" :weight bold))))
 '(mode-line ((t (:background nil :foreground "color-246" :box nil :overline nil :underline nil))))
 '(mode-line-inactive ((t (:background nil :foreground "#000000" :box nil :overline nil :underline nil))))
 '(popup-face ((t (:background nil :foreground "color-246"))))
 '(popup-isearch-match ((t (:background nil :foreground "color-246"))))
 '(popup-menu-face ((t (:background nil :foreground "color-246"))))
 '(popup-menu-mouse-face ((t (:background nil :foreground "color-246"))))
 '(popup-menu-selection-face ((t (:background nil :foreground "color-246"))))
 '(popup-scroll-bar-background-face ((t (:background "unspecified-bg"))))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:background nil :foreground "color-246"))))
 '(region ((t (:background nil :foreground "darkgreen"))))
 '(show-paren-match ((t (:background "unspecified-bg" :foreground "#D79921" :inverse-video nil :weight normal))))
 '(speedbar-separator-face ((t (:foreground "color-246" :overline "default"))))
 '(tool-bar ((t (:background nil :foreground "green"))))
 '(w3m-header-line-location-content ((t (:background nil :foreground "color-246"))) t)
 '(w3m-header-line-location-title ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-history-current-url ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-tab-background ((t (:background nil :foreground "green"))) t)
 '(w3m-tab-selected ((t (:background nil :foreground "darkgreen"))) t)
 '(w3m-tab-unselected ((t (:background nil :foreground "darkgreen"))) t)
 '(yas-field-highlight-face ((t :background nil :foreground "color-246"))))

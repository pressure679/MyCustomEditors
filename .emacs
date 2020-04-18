;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)

(setq default-directory "/home/pressure679/")

;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
;; (add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode")
;; (add-to-list 'load-path "~/.emacs.d/elpa/dash")

(load-file "~/.emacs.d/cursor-chg.elc")
(load-file "~/.emacs.d/erc-better-scroll.elc")
(load-file "~/.emacs.d/erc-fill.elc")
(load-file "~/.emacs.d/elpa/nlinum-1.8.1/nlinum-1.8.1.elc")
;; (load-file "~/.emacs.d/elpa/nlinum-hl-20170613.1748/nlinum-hl-20170613.1748.elc")
;; (add-to-list 'load-path "~/.emacs.d/elpa/erc-hl-nicks")
;; (add-to-list 'load-path "~/.emacs.d/elpa/evil")
;; (add-to-list 'load-path "~/.emacs.d/elpa/evil-escape")
;; (add-to-list 'load-path "~/.emacs.d/elpa/flymake-cursor")
;; (add-to-list 'load-path "~/.emacs.d/elpa/flymake-go")
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete")
;; (add-to-list 'load-path "~/.emacs.d/elpa/golint")
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-mode")
;; (add-to-list 'load-path "~/.emacs.d/elpa/goto-chg")
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-guru")
;; (add-to-list 'load-path "~/.emacs.d/elpa/popup")
;; (add-to-list 'load-path "~/.emacs.d/elpa/spray")
;; (add-to-list 'load-path "~/.emacs.d/elpa/undo-tree")
;; (add-to-list 'load-path "~/.emacs.d/elpa/vlf")
;; (add-to-list 'load-path "~/.emacs.d/elpa/w3m")
;; (add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/themes")
(add-to-list 'load-path "~/.emacs.d/snippets")
(add-to-list 'load-path "~/.emacs.d/elpa/pdf-tools-org")
(require 'pdf-tools-org)

;; (set-frame-parameter (selected-frame) 'alpha '(100 . 50))
;; (add-to-list 'default-frame-alist '(alpha . (100 . 50)))
;; (set-frame-parameter (selected-frame) 'alpha '(100 . 35))
;; (add-to-list 'default-frame-alist '(alpha . (100 . 35)))

(load-theme 'grandshell t)
;; ubuntu
;; zenburn
;; monokai
;; solarized-dark
;; gruvbox
;; cyberpunk
;; grandshell
;; tango
;; monochrome

(defvar my-auto-save-folder "~/.emacs.d/auto-save")
(defvar backup-directory-alist `(("." . "~/.emacs.d/backup")))
(setq backup-by-copying t
		delete-old-versions t
		kept-new-versions 6
		kept-old-versions 2
		version-control t
		make-backup-files nil
		auto-save-timeout 7200)

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
(global-set-key (kbd "C-M-h") 'hs-hide-all)
(global-set-key (kbd "C-S-M-h") 'hs-show-all)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-p") 'previous-buffer)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<up>") 'enlarge-window)
(global-set-key (kbd "M-<down>") 'shrink-window)
;; (global-set-key (kbd "C-b s") (lambda () (insert "{}")))
;; (global-set-key (kbd "C-b c") (lambda () (insert "[]")))
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b c") "{}")
(global-set-key (kbd "C-b s") "[]")
(global-set-key (kbd "C-b t") "\<\>")

(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 4))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 4))

(global-set-key (kbd "C-<down>") 'gcm-scroll-down)
(global-set-key (kbd "C-<up>") 'gcm-scroll-up)

(add-hook 'go-mode-hook              ; other modes similarly
			 '(lambda ()
				 (hs-minor-mode 1)
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 (go-guru-hl-identifier-mode 1)
				 )
			 )
(add-hook 'java-mode-hook            ; other modes similarly
			 '(lambda ()
				 (hs-minor-mode 1)
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 )
			 )
(add-hook 'python-mode-hook          ; other modes similarly
			 '(lambda ()
				 (hs-minor-mode 1)
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 (jedi:complete-on-dot 1)
				 )
			 )
(add-hook 'c-mode-hook               ; other modes similarly
			 '(lambda ()
				 (hs-minor-mode 1)
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 )
			 )
(add-hook 'cpp-mode-hook               ; other modes similarly
			 '(lambda ()
				 (hs-minor-mode 1)
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 )
			 )
(add-hook 'emacs-lisp-mode-hook
			 '(lambda ()
				 (whitespace-mode 1)
				 (nlinum-mode 1)
				 )
			 )

(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; (desktop-save-mode 1)

(require 'cl)

(require 'evil)
(require 'evil-escape)
(global-set-key (kbd "M-m") 'evil-escape)
;; (setq-default evil-insert-state-cursor '("#0000AA" (bar . 2)))
;; (setq-default evil-normal-state-cursor '("#0000AA" bar))
;; (unless (display-graphic-p)
;;   )
;; (require 'evil-terminal-cursor-changer)
;; (evil-terminal-cursor-changer-activate) ; or (etcc-on)
;; (setq evil-motion-state-cursor 'box)  ; █
;; (setq evil-visual-state-cursor 'box)  ; █
;; (setq evil-normal-state-cursor 'box)  ; █
;; (setq evil-insert-state-cursor 'bar)  ; |
;; (setq evil-emacs-state-cursor  'hbar) ; _
;; (unless (display-graphic-p)
;; (require 'evil-terminal-cursor-changer)
;;   (evil-terminal-cursor-changer-activate) ; or (etcc-on)
;;   (setq evil-motion-state-cursor 'box)  ; █
;;   (setq evil-visual-state-cursor 'box)  ; █
;;   (setq evil-normal-state-cursor 'box)  ; █
;;   (setq evil-insert-state-cursor 'bar)  ; ⎸
;;   )

;; Single char cursor movement
(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'previous-line)
(global-set-key (kbd "M-j") 'next-line)

;; Move by word
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "M-e") 'forward-word)

(global-unset-key (kbd "M-d"))
(global-set-key (kbd "M-d M-b") 'backward-kill-word)
(global-set-key (kbd "M-d M-e") 'kill-word)

(require 'go-mode)
(require 'go-autocomplete)
;; (require 'flymake-go)
;; (require 'golint)
(require 'go-guru)
(go-guru-hl-identifier-mode 1)

(require 'auto-complete-config)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
;; (ac-set-trigger-key "TAB")
(ac-config-default)
(auto-complete-mode 1)
(setq ac-auto-show-menu nil)
(ac-linum-workaround)
(ac-flyspell-workaround)
(setq ac-max-width 0.5)
(setq ac-menu-height 5)
;; (setq ac-auto-show-menu 0.1)
;; (setq ac-delay 0.1)
;; (setq ac-auto-start t)
;; (setq ac-show-menu-immediately-on-auto-complete t)

(require 'yasnippet)

(require 'centered-cursor-mode)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

(require 'spray)

(require 'smooth-scroll)
;; (smooth-scroll-mode t)

;; (require 'hlinum)
;; (hlinum-activate)

;; (defun what-face (pos)
;;   (interactive "d")
;;   (let ((face (or (get-char-property (pos) 'read-face-name)
;; 						(get-char-property (pos) 'face))))
;; 	 (if face (message "Face: %s" face) (message "No face at %d" pos))))

(require 'cursor-chg)
(change-cursor-mode 1)
(toggle-cursor-type-when-idle 1)

(visual-line-mode 1)

(require 'web-server)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (\` ((".*" (\, my-auto-save-folder) t))))
 '(auto-save-interval 3000)
 '(auto-save-list-file-prefix "/home/naamik/.emacs.d/auto-save/save-")
 '(auto-save-mode t)
 '(auto-save-timeout 2998)
 '(blink-cursor-mode nil)
 '(c-basic-offset 3)
 '(cursor-type t)
 '(custom-safe-themes
	 (quote
		 ("6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "ba3c5da197000aaf2f5514bef814b4d8bf1b6de7309b9fcd682ec26aa6a16fd2" "58d2d0c487b298a4d2e4b0745b00d226d3abb37229060c2cb13585cd6e70e0f3" default)))
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(erc-autojoin-domain-only t)
 '(erc-autojoin-mode 1)
 '(erc-fill-function (quote erc-fill-variable))
 '(erc-fill-mode nil)
 '(erc-fill-prefix "")
 '(erc-insert-timestamp-function (quote erc-insert-timestamp-left))
 '(erc-log-channels-directory "~/irclogs/erc-format/")
 '(erc-nick "pressure679")
 '(erc-nick-uniquifier "pressure679")
 '(erc-password "oauth:nzwautavo7yi0m1yo89dslvfzkich5" t)
 '(erc-port 6667)
 '(erc-prompt-for-password t)
 '(erc-save-buffer-on-part nil)
 '(erc-server "irc.freenode.net")
 '(erc-stamp-mode t)
 '(erc-system-name "pressure679")
 '(erc-timestamp-format-left "[%a %b %e %Y]")
 '(erc-track-mode t)
 '(erc-user-full-name "pressure679")
 '(evil-mode 1)
 '(global-nlinum-mode t)
 '(global-visual-line-mode t)
 '(hlinum-activate t)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(linum-format "%d ")
 '(menu-bar-mode nil)
 '(nlinum-highlight-current-line t)
 '(nlinum-hl-mode t t)
 '(nlinum-mode t t)
 '(nlinum-use-right-margin nil)
 '(package-selected-packages
	 (quote
		 (jedi php-mode grandshell-theme color-theme-solarized nlinum-hl ubuntu-theme zenburn-theme ## green-phosphor-theme nlinum emms gorepl-mode popup ace-mc yasnippet xclip w3m vlf spray pdf-tools neotree monokai-theme monochrome-theme hlinum gruvbox-theme go-mode go-autocomplete flymake-go flymake-cursor evil-escape erc-twitch erc-hl-nicks doom-themes cyberpunk-theme centered-cursor-mode)))
 '(python-indent-offset 2)
 '(scroll-bar-mode nil)
 '(set-fringe-mode 0)
 '(show-paren-mode t)
 '(standard-indent 4)
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory my-auto-save-folder)
 '(visible-cursor nil)
 '(whitespace-display-mappings
	 (quote
		 ((space-mark 32
										[32]
										[32])
				(space-mark 160
												[164]
												[95])
				(newline-mark 36
													[36 36])
				(tab-mark 9
											[124 32 32]
											[92 9]))))
 '(xterm-mouse-mode t)
 '(yas-global-mode t nil (yasnippet)))
;; (setq mode-line-mode-menu nil)
;; (setq mode-line-format nil)
;; (hl-line-mode 1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(ac-candidate-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(ac-candidate-mouse-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(ac-completion-face ((t (:underline nil :background "unspecified-bg"))))
 '(ac-gtags-candidate-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(ac-gtags-selection-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(ac-selection-face ((t (:background "unspecified-bg" :foreground "white"))))
 '(ac-yasnippet-candidate-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(ac-yasnippet-selection-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(bold ((t nil)))
 '(buffer-menu-buffer ((t nil)))
 '(cursor ((t (:background "#0000AA"))))
 '(flymake-errline ((t (:underline nil :foreground "red" :background "unspecified-bg"))))
 '(flymake-infoline ((t (:underline nil :foreground "#00B800" :background "unspecified-bg"))) t)
 '(flymake-warnline ((t (:underline nil :foreground "yellow" :background "unspecified-bg"))))
 '(font-lock-comment-delimiter-face ((t (:background "unspecified-bg" :foreground "#a89984"))))
 '(font-lock-comment-face ((t (:background "unspecified-bg" :foreground "#a89984"))))
 '(font-lock-warning-face ((t (:background "unspecified-bg"))))
 '(fringe ((t (:background "unspecified-bg"))))
 '(go-guru-hl-identifier-face ((t (:distant-foreground "#FFAA00" :foreground "#FFAA00"))))
 '(header-line ((t (:inherit mode-line :background "unspecified-bg" :foreground "grey90" :box nil))))
 '(highlight ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(hl-line ((t (:foreground "#a89984" :background "unspecified-bg"))))
 '(isearch ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(isearch-fail ((t (:background "unspecified-bg" :foreground "red"))))
 '(lazy-highlight ((t (:background "unspecified-bg" :foreground "#00b800"))))
 '(linum ((t (:background "unspecified-bg" :foreground "#a89984"))))
 '(linum-highlight-face ((t (:foreground "#AA0000"))))
 '(match ((t (:background "unspecified-bg" :foreground "#00b800"))))
 '(menu ((t (:background "unspecified-bg"))))
 '(minibuffer-prompt ((t (:background "unspecified-bg" :foreground "#AFAF00" :weight bold))))
 '(mode-line ((t (:background "unspecified-bg" :foreground "#A89984" :box nil :overline nil :underline nil :weight normal))))
 '(mode-line-buffer-id ((t (:foreground "#00B800" :weight bold))))
 '(mode-line-inactive ((t (:background "unspecified-bg" :foreground "#8B8878" :box nil :overline nil :underline nil))))
 '(nlinum-current-line ((t (:inherit linum :foreground "#00b800" :weight bold))))
 '(popup-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(popup-isearch-match ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(popup-menu-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(popup-menu-mouse-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(popup-menu-selection-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(popup-scroll-bar-background-face ((t (:background "unspecified-bg"))))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(region ((t (:background "unspecified-bg" :foreground "#FF69B4"))))
 '(show-paren-match ((t (:background "unspecified-bg" :foreground "#FF00C8"))))
 '(show-paren-mismatch ((t (:foreground "#00FF00"))))
 '(speedbar-separator-face ((t (:overline "default"))))
 '(tool-bar ((t (:background "unspecified-bg" :foreground "#00B800"))))
 '(underline ((t nil)))
 '(w3m-anchor ((t (:underline nil))))
 '(w3m-arrived-anchor ((t (:underline nil))))
 '(w3m-form ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-form-button ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-form-button-mouse ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-form-button-pressed ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-header-line-location-content ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-header-line-location-title ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-history-current-url ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-image ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-image-anchor ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-italic ((t nil)))
 '(w3m-tab-background ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-mouse ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-selected ((t (:underline nil :background "unspecified-bg" :foreground "#00B800"))))
 '(w3m-tab-selected-background ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-selected-retrieving ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-unselected ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-unselected-retrieving ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-tab-unselected-unseen ((t (:underline nil :background "unspecified-bg"))))
 '(w3m-underline ((t nil)))
 '(whitespace-big-indent ((t (:background "unspecified-bg" :foreground "firebrick"))))
 '(whitespace-empty ((t (:background "unspecified-bg" :foreground "#FF5F87"))))
 '(whitespace-hspace ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-indentation ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-line ((t (:background "unspecified-bg" :foreground nil))))
 '(whitespace-newline ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-space ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-space-after-tab ((t (:background "unspecified-bg" :foreground "#AAAAAA" :weight bold))))
 '(whitespace-space-before-tab ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-tab ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(whitespace-trailing ((t (:background "unspecified-bg" :foreground "#AAAAAA"))))
 '(yas-field-highlight-face ((t :background "unspecified-bg" :foreground "#00B800"))))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
;; (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode")
(add-to-list 'load-path "~/.emacs.d/elpa/codesearch")
(add-to-list 'load-path "~/.emacs.d/elpa/dash")
(load-file "~/.emacs.d/elpa/erc-better-scroll/erc-better-scroll.elc")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-hl-nicks")
(add-to-list 'load-path "~/.emacs.d/elpa/evil")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-cursor")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-go")
(add-to-list 'load-path "~/.emacs.d/elpa/ggtags")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete")
(add-to-list 'load-path "~/.emacs.d/elpa/golint")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg")
(add-to-list 'load-path "~/.emacs.d/elpa/go-guru")
(add-to-list 'load-path "~/.emacs.d/elpa/go-projectile")
(add-to-list 'load-path "~/.emacs.d/elpa/hlinum")
(add-to-list 'load-path "~/.emacs.d/elpa/minimap-1.2")
(add-to-list 'load-path "~/.emacs.d/elpa/neotree")
(add-to-list 'load-path "~/.emacs.d/elpa/popup")
(add-to-list 'load-path "~/.emacs.d/elpa/projectile")
(add-to-list 'load-path "~/.emacs.d/elpa/pdf-tools")
(add-to-list 'load-path "~/.emacs.d/elpa/rtags")
(add-to-list 'load-path "~/.emacs.d/elpa/smooth-scroll")
(add-to-list 'load-path "~/.emacs.d/elpa/spray")
(add-to-list 'load-path "~/.emacs.d/elpa/tablist")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree")
(add-to-list 'load-path "~/.emacs.d/elpa/vlf")
(add-to-list 'load-path "~/.emacs.d/elpa/xclip")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/themes")
(add-to-list 'load-path "~/.emacs.d/snippets")

;; (setenv "env_variables"
;; 	(concat
;; 		"/home/pressure679/go/src" ";"
;; 		"/media/pressure679/Datago/src" ";"
;; 	)
;; )

(load-theme 'gruvbox t)
;; gruvbox
;; monokai
;; cyberpunk
;; grandshell
;; tango
;; monochrome
;; zenburn
;; solarized-dark

;; (add-to-list 'default-frame-alist '(foreground-color . "#A89984"))
;; (add-to-list 'default-frame-alist '(foreground-color . "unspecified-fg"))
;; (add-to-list 'default-frame-alist '(background-color . "unspecified-bg"))

(defvar my-auto-save-folder "~/.emacs.d/auto-save/")
(defvar backup-directory-alist `(("." . "~/.emacs.d/backup")))
(setq backup-by-copying t
	  delete-old-versions t
	  kept-new-versions 6
	  kept-old-versions 2
	  version-control t
	  make-backup-files nil
	  auto-save-timeout 1800)

;; (require 'hs-minor-mode)
;; (hs-minor-mode 1)

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
(global-set-key (kbd "C-M-h") 'hs-hide-all)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-p") 'previous-buffer)
(global-set-key (kbd "M-m") 'evil-escape)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)
;; (global-set-key (kbd "C-M-f") (set-foreground-color nil))
;; (global-set-key (kbd "C-f") 'set-foreground-color "unspecified-bg")

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
			(go-guru-hl-identifier-mode 1)
			)
		  )
		 (add-hook 'java-mode-hook            ; other modes similarly
			'(lambda () (hs-minor-mode 1)))
(add-hook 'python-mode-hook          ; other modes similarly
		  '(lambda () (hs-minor-mode 1)))
(add-hook 'c-mode-hook               ; other modes similarly
		  '(lambda () (hs-minor-mode 1)))

(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(require 'cl)

(require 'evil)
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

(require 'go-mode)
(require 'go-autocomplete)
(require 'flymake-go)
(require 'golint)
(require 'go-guru)
(require 'go-projectile)

;; (require 'flymake-cursor)

(require 'auto-complete-config)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
;; (ac-set-trigger-key "TAB")
(ac-config-default)
(auto-complete-mode 1)
(setq ac-auto-show-menu nil)
(ac-linum-workaround)

(require 'yasnippet)

(require 'centered-cursor-mode)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

;; (require 'hlinum)
;; (hlinum-activate)

(require 'xclip)
(xclip-mode 1)
;; (pdf-tools-install)

(require 'spray)

(require 'neotree)

(require 'smooth-scroll)
(smooth-scroll-mode t)

(require 'codesearch)

(require 'projectile)
(require 'projectile-codesearch)

;; (setq package-check-signature nil)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

(require 'erc)
(require 'erc-hl-nicks)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                 "324" "329" "332" "333" "353" "477"))
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
(add-to-list 'erc-autojoin-channels-alist
						 '(".*freenode.net" "##programming" "#go-nuts" "##algorithm" "#machinelearning" "#nlp" "#statistics"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (\` ((".*" (\, my-auto-save-folder) t))))
 '(auto-save-interval 120)
 '(auto-save-list-file-prefix "~/.emacs.d/auto-save/save-")
 '(auto-save-mode t)
 '(auto-save-timeout 119)
 '(blink-cursor-mode nil)
 '(c-basic-offset 2)
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
	("58d2d0c487b298a4d2e4b0745b00d226d3abb37229060c2cb13585cd6e70e0f3" "b9293d120377ede424a1af1e564ba69aafa85e0e9fd19cf89b4e15f8ee42a8bb" "ba3c5da197000aaf2f5514bef814b4d8bf1b6de7309b9fcd682ec26aa6a16fd2" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "58d43171b476c3228f8a8bca7ef2530e606bc6694885abda8c9fdf2427d05e30" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "badc4f9ae3ee82a5ca711f3fd48c3f49ebe20e6303bba1912d4e2d19dd60ec98" "38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "78f614a58e085bd7b33809e98b6f1a5cdd38dae6257e48176ce21424ee89d058" default)))
 '(electric-indent-mode t)
 '(erc-autojoin-domain-only t)
 '(erc-autojoin-mode 1)
 '(erc-log-channels-directory "~/.erc/logs/" t)
 '(erc-nick "pressure679")
 '(erc-nick-uniquifier "pressure679")
 '(erc-password "oauth:nzwautavo7yi0m1yo89dslvfzkich5" t)
 '(erc-port 6667)
 '(erc-prompt-for-password t)
 '(erc-save-buffer-on-part t)
 '(erc-server "irc.freenode.net")
 '(erc-system-name "pressure679")
 '(erc-track-mode t)
 '(erc-user-full-name "pressure679")
 '(evil-mode 1)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(global-whitespace-newline-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(linum-format "%d ")
 '(linum-mode t t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
	(ace-mc yasnippet xclip w3m vlf spray pdf-tools neotree monokai-theme monochrome-theme hlinum gruvbox-theme go-mode go-autocomplete flymake-go flymake-cursor evil-escape erc-twitch erc-hl-nicks doom-themes cyberpunk-theme centered-cursor-mode)))
 '(python-indent-offset 4)
 '(scroll-bar-mode nil)
 '(set-fringe-mode 0)
 '(show-paren-mode t)
 '(standard-indent 4)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory my-auto-save-folder t)
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
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "Book" :family "Deja Vu Sans Mono"))))
 '(ac-candidate-face ((t (:background nil :foreground "#00B800"))))
 '(ac-candidate-mouse-face ((t (:background nil :foreground "#00B800"))))
 '(ac-completion-face ((t (:underline nil :background nil))))
 '(ac-gtags-candidate-face ((t (:background nil :foreground "#00B800"))))
 '(ac-gtags-selection-face ((t (:background nil :foreground "#00B800"))))
 '(ac-selection-face ((t (:background nil :foreground "white"))))
 '(ac-yasnippet-candidate-face ((t (:background nil :foreground "#00B800"))))
 '(ac-yasnippet-selection-face ((t (:background nil :foreground "#00B800"))))
 '(bold ((t nil)))
 '(buffer-menu-buffer ((t nil)))
 '(cursor ((t (:background nil :foreground nil))))
 '(flymake-errline ((t (:underline nil :foreground "red" :background nil))))
 '(flymake-infoline ((t (:underline nil :foreground "#00B800" :background nil))) t)
 '(flymake-warnline ((t (:underline nil :foreground "yellow" :background nil))))
 '(font-lock-comment-delimiter-face ((t (:background nil :foreground "#7c6f64"))))
 '(font-lock-comment-face ((t (:background nil :foreground "#7c6f64"))))
 '(font-lock-warning-face ((t (:background nil))))
 '(fringe ((t (:background nil))))
 '(go-guru-hl-identifier-face ((t (:distant-foreground "#5f615c" :foreground "#5f615c"))))
 '(hl-line ((t (:foreground "#00B800" :background nil))))
 '(linum ((t (:background nil :foreground "#a89984"))))
 '(linum-highlight-face ((t (:background nil :foreground "#FF00C8"))))
 '(menu ((t (:background nil))))
 '(minibuffer-prompt ((t (:background nil :foreground "#AFAF00" :weight bold))))
 '(mode-line ((t (:background nil :foreground "#8B8878" :box nil :overline nil :underline nil :weight normal))))
 '(mode-line-buffer-id ((t (:foreground "#00B800" :weight bold))))
 '(mode-line-inactive ((t (:background nil :foreground "#8B8878" :box nil :overline nil :underline nil))))
 '(neo-dir-link-face ((t (:background nil))))
 '(neo-header-face ((t (:background nil))))
 '(neo-root-dir-face ((t (:background nil))))
 '(popup-face ((t (:background nil :foreground "#00B800"))))
 '(popup-isearch-match ((t (:background nil :foreground "#00B800"))))
 '(popup-menu-face ((t (:background nil :foreground "#00B800"))))
 '(popup-menu-mouse-face ((t (:background nil :foreground "#00B800"))))
 '(popup-menu-selection-face ((t (:background nil :foreground "#00B800"))))
 '(popup-scroll-bar-background-face ((t (:background nil))))
 '(popup-scroll-bar-foreground-face ((t nil)))
 '(popup-tip-face ((t (:background nil :foreground "#00B800"))))
 '(region ((t (:background nil :foreground "#FF69B4"))))
 '(show-paren-match ((t (:background nil :foreground "#FF00C8"))))
 '(show-paren-mismatch ((t (:background nil :foreground "#00FF00"))))
 '(speedbar-separator-face ((t (:overline "default"))) t)
 '(tool-bar ((t (:background nil :foreground "#00B800"))))
 '(underline ((t nil)))
 '(w3m-anchor ((t (:underline nil))))
 '(w3m-arrived-anchor ((t (:underline nil))))
 '(w3m-form ((t (:underline nil :background nil))))
 '(w3m-form-button ((t (:underline nil :background nil))))
 '(w3m-form-button-mouse ((t (:underline nil :background nil))))
 '(w3m-form-button-pressed ((t (:underline nil :background nil))))
 '(w3m-header-line-location-content ((t (:underline nil :background nil))))
 '(w3m-header-line-location-title ((t (:underline nil :background nil))))
 '(w3m-history-current-url ((t (:underline nil :background nil))))
 '(w3m-image ((t (:underline nil :background nil))))
 '(w3m-image-anchor ((t (:underline nil :background nil))))
 '(w3m-italic ((t nil)))
 '(w3m-tab-background ((t (:underline nil :background nil))))
 '(w3m-tab-mouse ((t (:underline nil :background nil))))
 '(w3m-tab-selected ((t (:underline nil :background nil))))
 '(w3m-tab-selected-background ((t (:underline nil :background nil))))
 '(w3m-tab-selected-retrieving ((t (:underline nil :background nil))))
 '(w3m-tab-unselected ((t (:underline nil :background nil))))
 '(w3m-tab-unselected-retrieving ((t (:underline nil :background nil))))
 '(w3m-tab-unselected-unseen ((t (:underline nil :background nil))))
 '(w3m-underline ((t nil)))
 '(whitespace-big-indent ((t (:background nil :foreground "firebrick"))))
 '(whitespace-empty ((t (:background nil :foreground "#FF5F87"))))
 '(whitespace-hspace ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-indentation ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-line ((t (:background nil :foreground nil))))
 '(whitespace-newline ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-space ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-space-after-tab ((t (:background nil :foreground "#FF8C00" :weight bold))))
 '(whitespace-space-before-tab ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-tab ((t (:background nil :foreground "#5f615c"))))
 '(whitespace-trailing ((t (:background nil :foreground "#5f615c"))))
 '(yas-field-highlight-face ((t :background nil :foreground "#00B800"))))

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
(add-to-list 'load-path "~/.emacs.d/elpa/erc-colorize-20150725.709")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20150928.737")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape-20150926.2152")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20150817.2318")
(add-to-list 'load-path "~/.emacs.d/elpa/go-play-20120914.1248")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20150903.1940")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg-20131228.659")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20150626.711")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140509.522")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20150927.1716")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/cyberpunk-theme-20150828.508")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/gruvbox-theme-20150729.341")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme-20150521.2257")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/zenburn-theme-20150831.716")

(load-theme 'gruvbox t)
;; cyberpunk
;; gruvbox
;; monokai
;; zenburn

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

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-'") 'hs-toggle-hiding)
(global-set-key (kbd "M-j") 'other-window)
(global-set-key (kbd "M-k") 'next-buffer)
(global-set-key (kbd "M-q") 'evil-escape)
(global-set-key (kbd "M-a") 'save-buffer)
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
(global-set-key (kbd "M-q") 'evil-escape)

(require 'yasnippet)
(yas/global-mode 1)

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
(setq erc-server "irc.freenode.net")
(erc-autojoin-mode 1)
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                 "324" "329" "332" "333" "353" "477"))
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
;; (add-to-list 'erc-autojoin-channels-alist
;;              '(".*freenode.net" "##programming" "#go-nuts"))
(setq erc-server-connect-function
      #'(lambda (name buffer host service &rest parameters)
          (let ((hosts (list "10.40.40.40")))
            (apply
             (if (member host hosts)
                 'socks-open-network-stream
               'open-network-stream)
             (append (list name buffer host service) parameters)))))
             (add-hook 'erc-mode-hook
#'(lambda ()
  (company-mode 0)
  (set (make-local-variable 'scroll-conservatively) 100)))
(add-hook 'erc-mode-hook
  #'(lambda ()
    (company-mode 0)
    (local-set-key (kbd "C-l") #'erc-recenter-top-bottom)))
(require 'socks)
(setq erc-autojoin-timing 'ident)
(setq socks-override-functions nil)
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
 '(inhibit-startup-screen t))
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
 '(speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
 '(tool-bar ((t (:foreground "black")))))

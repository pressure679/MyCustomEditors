(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20150618.1949")
(add-to-list 'load-path "~/.emacs.d/elpa/centered-cursor-mode-20150420.1242")
(add-to-list 'load-path "~/.emacs.d/elpa/company-20150919.1933")
(add-to-list 'load-path "~/.emacs.d/elpa/company-go-20150903.1944")
(add-to-list 'load-path "~/.emacs.d/elpa/dash-20150829.433")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-sasl")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-better-scroll")
(add-to-list 'load-path "~/.emacs.d/elpa/erc-colorize")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20150915.622")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-escape-20150921.2058")
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20150903.1940")
(add-to-list 'load-path "~/.emacs.d/elpa/go-complete-20150917.139")
(add-to-list 'load-path "~/.emacs.d/elpa/go-direx-20150315.1843")
(add-to-list 'load-path "~/.emacs.d/elpa/go-errcheck-20150828.1135")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20150817.2318")
(add-to-list 'load-path "~/.emacs.d/elpa/go-play-20120914.1248")
(add-to-list 'load-path "~/.emacs.d/elpa/go-snippets-20130821.844")
(add-to-list 'load-path "~/.emacs.d/elpa/goto-chg-20131228.659")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20150626.711")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-complete-20141108.1908")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140509.522")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20150912.1330")
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-dlv-20150913.317")
;; (add-to-list 'load-path "~/.emacs.d/elpa/direx-20150805.143")
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-eldoc-20150821.2326")
;; (add-to-list 'load-path "~/.emacs.d/elpa/erc-sasl")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/zenburn-theme-20150831.716")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/cyberpunk-theme-20150828.508")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme-20150521.2257")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monochrome-theme-20140326.350")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/gruvbox-theme-20150729.341")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/solarized-theme-20150916.504")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/occidental-theme-2013312.1257")

(load-theme 'cyberpunk t)
;; cyberpunk
;; gruvbox
;; monochrome
;; zenburn
;; monokai
;; solarized

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

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 37))
(add-to-list 'default-frame-alist '(width . 80))
(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))

(add-hook 'go-mode-hook              ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'java-mode-hook            ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'python-mode-hook          ; other modes similarly
          '(lambda () (hs-minor-mode 1)))
(add-hook 'c-mode-hook               ; other modes similarly
          '(lambda () (hs-minor-mode 1)))

;; (autoload 'ergoemacs-mode "ergoemacs-mode" "" t)
;; (setq ergoemacs-theme nil)
;; (setq ergoemacs-keyboard-layout "da")
;; (ergoemacs-mode 1)

(require 'yasnippet)
(yas/global-mode 1)

(require 'go-mode)
(require 'go-complete)
(require 'go-autocomplete)
(add-hook 'completion-at-point-functions 'go-complete-at-point)

(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(autoload 'centered-cursor-mode "centered-cursor-mode" nil t)
(global-set-key (kbd "M-,") 'centered-cursor-mode)

(require 'evil)
(evil-mode 1)
(require 'evil-escape)
(global-set-key (kbd "M-q") 'evil-escape)

;; (require 'go-direx)
;; (require 'go-eldoc)
;; (add-hook 'go-mode-hook 'go-eldoc-setup)

(global-set-key (kbd "M-.") 'goto-line)
(global-set-key (kbd "C-'") 'hs-toggle-hiding)
(global-set-key (kbd "M-j") 'other-window)
(global-set-key (kbd "M-k") 'next-buffer)
(global-set-key (kbd "M-q") 'evil-escape)
(global-set-key (kbd "M-a") 'save-buffer)

(setq read-mail-command 'mew)
(setq mail-user-agent 'mew-user-agent)
(define-mail-user-agent
  'mew-user-agent
    'mew-user-agent-compose
      'mew-draft-send-message
        'mew-draft-kill
          'mew-send-hook)

(setq diary-file "~/Dropbox/diary")
(setq calendar-and-diary-frame-parameters
  '((name . "Calendar") (title . "Calendar")
    (height . 20) (width . 78)
    (minibuffer . t)))
(setq calendar-date-style "european")

(require 'erc)
(require 'erc-sasl)
(setq erc-server "irc.freenode.net")
(erc-autojoin-mode 1)
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                 "324" "329" "332" "333" "353" "477"))
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
;; (add-to-list 'erc-autojoin-channels-alist
;;              '(".*freenode.net" "#emacs" "#vim" "##programming" "#lisp" "#python" "#java" "#go-nuts" "#algorithms" "#ai" "#wikimedia-ai" "##networking" "##security"))
(add-to-list 'erc-sasl-server-regexp-list
             ".*")
(setq erc-sasl-server-regexp-list '("irc\\.freenode\\.net"))
(setq socks-override-functions nil)
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

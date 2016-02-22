;; SHORTCUTS
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-b" 'revert-buffer)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; PYTHON
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(add-hook 'python-mode-hook 'flycheck-mode)

;; MARKDOWN
; (require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.mdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
(setq markdown-indent-on-enter nil)

;; GENERAL

;; set environment coding system
(set-language-environment "UTF-8")
;; auto revert buffer globally
(global-auto-revert-mode t)
;; y or n is suffice for a yes or no question
(fset 'yes-or-no-p 'y-or-n-p)
;; always add new line to the end of a file
(setq require-final-newline t)
;; add no new lines when "arrow-down key" at the end of a buffer
(setq next-line-add-newlines nil)
;; prevent the annoying beep on errors
(setq ring-bell-function 'ignore)
;; remove trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; enable to support navigate in camelCase words
(global-subword-mode t)
;; hide startup splash screen
(setq inhibit-startup-screen t)
;; show all in emacs interactive output
(setenv "PAGER" "cat")
;; set lang
(setenv "LANG" "en_US.UTF-8")
;; set text-mode as the default major mode, instead of fundamental-mode
(setq-default major-mode 'text-mode)

;; use icomplete in minibuffer
(icomplete-mode t)

;; delete the selection with a keypress
(delete-selection-mode t)

(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory ".saved-places"))
(require 'saveplace)
(require 'recentf)

;; save the .recentf file to .emacs.d/
(setq recentf-save-file (concat user-emacs-directory ".recentf"))

;; enable recent files mode.
(recentf-mode t)

;; 50 files ought to be enough.
(setq recentf-max-saved-items 50)

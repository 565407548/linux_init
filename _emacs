;;(load " /home/zcj/.emacs.d/clang-format.el")
;;referrence: http://www.emacswiki.org/emacs/DotEmacsChallenge
(add-to-list 'load-path "~/.emacs.d")
(load-file "~/.emacs.d/code-style.el")

(global-linum-mode t)

(setq inhibit-startup-screen t)

;;highlight parenthesis
(show-paren-mode 1)

;(set-default-font "Bitstream Vera Sans Mono-15")  
(set-default-font "courier 10 pitch-12")

(global-set-key (kbd "C-SPC") nil)

(global-set-key "\C-a" 'mark-whole-buffer)
(global-set-key "\C-c\C-a" 'mark-whole-buffer)
(column-number-mode t)

(tool-bar-mode -1)
;(menu-bar-mode -1)

;;always indent using spaces,never tabs
(setq-default indent-tabs-mode nil)
(set-scroll-bar-mode 'right)

(setq frame-title-format "%b - emacs")

(setq require-final-newline 't)

;; copy and paste content between Ubuntu system and Emacs
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'gyp)

;;--------------------------------------------c/c++ mode---------------------------------------------
;;(load-file "~/tools/clang-format/clang-format.el")
(global-set-key [C-tab] 'clang-format-buffer)
;;(defun my-c-mode-settings
;;(local-set-key [C-tab] 'clang-format-buffer))
;;(add-hook 'c-mode-common-hook 'my-c-mode-settings)
;;;; CC-mode配置  http://cc-mode.sourceforge.net/
;; (require 'cc-mode)
;; (c-set-offset 'inline-open 0)
;; (c-set-offset 'friend '-)
;; (c-set-offset 'substatement-open 0)
;; ;;;;我的C/C++语言编辑策略

;; (defun my-c-mode-common-hook()
;;   (setq tab-width 4 indent-tabs-mode nil)
;;   ;;; hungry-delete and auto-newline
;;  ;; (c-toggle-auto-hungry-state 1)
;;   ;;按键定义
;;   (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
;;   (define-key c-mode-base-map [(return)] 'newline-and-indent)
;;   (define-key c-mode-base-map [(f7)] 'compile)
;;   (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
;; ;;  (define-key c-mode-base-map [(tab)] 'hippie-expand)
;;   (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
;;   (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
;;   ;;预处理设置
;;   (setq c-macro-shrink-window-flag t)
;;   (setq c-macro-preprocessor "cpp") 
;;   (setq c-macro-cppflags " ")
;;   (setq c-macro-prompt-flag t)
;;   (setq hs-minor-mode t)
;;   (setq abbrev-mode t)
;; )
;; (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; ;;;;我的C++语言编辑策略
;; (defun my-c++-mode-hook()
;;   (setq tab-width 4 indent-tabs-mode nil)
;;   (c-set-style "stroustrup")
;; ;;  (define-key c++-mode-map [f3] 'replace-regexp)
;;   )
;; (load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;; (setq semanticdb-project-roots 
;;       (list
;;         (expand-file-name "/")))
;; (defun my-indent-or-complete ()
;;    (interactive)
;;    (if (looking-at "\\>")
;;       (hippie-expand nil)
;;       (indent-for-tab-command))
;;  )

;; (global-set-key [(control tab)] 'my-indent-or-complete)
;; (autoload 'senator-try-expand-semantic "senator")

;; (setq hippie-expand-try-functions-list
;;       '(
;;         senator-try-expand-semantic
;;         try-expand-dabbrev
;;         try-expand-dabbrev-visible
;;         try-expand-dabbrev-all-buffers
;;         try-expand-dabbrev-from-kill
;;         try-expand-list
;;         try-expand-list-all-buffers
;;         try-expand-line
;;         try-expand-line-all-buffers
;;         try-complete-file-name-partially
;;         try-complete-file-name
;;         try-expand-whole-kill
;;         )
;; )
;; (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
;; (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
;; (global-set-key [(f5)] 'speedbar)
;; (define-key c-mode-base-map [(f7)] 'compile)
;; '(compile-command "make")


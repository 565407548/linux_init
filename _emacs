;;(load " /home/zcj/.emacs.d/clang-format.el")
;;referrence: http://www.emacswiki.org/emacs/DotEmacsChallenge
(add-to-list 'load-path "~/.emacs.d")

(global-linum-mode t)

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

(require 'gyp)

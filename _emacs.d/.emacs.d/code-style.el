
(defun code-style (tool args) 
  "enforce code style"
  (let ((position (point))) 
    (progn 
      (if (executable-find tool) 
          (shell-command-on-region 
           (point-min) (point-max) 
           (format "%s %s" tool args) t t) 
        (message (format "can't find %s"  tool)))) 
    (goto-char position)))

;;for C++
;;apt-get install clang-format-3.4
(defun clang-format-buffer()
  "clang-format buffer"
  (interactive)
  (code-style "clang-format-3.4" "-style=Chromium"))

;;for python
;;sudo apt-get install python-autopep8
(defun pep8-buffer()
  "pep-8 style on the buffer"
  (interactive)
  (code-style "autopep8" "-a --max-line-length=99 -"))

;;for js
;;
(defun jsbeautify-buffer()
  "beautify the js buffer."
  (interactive)
  (code-style "js-beautify" "-i -s2 -j"))

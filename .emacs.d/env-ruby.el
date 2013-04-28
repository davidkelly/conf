;---------------------------------------------------------
;       ruby-mode
;---------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/rhtml")
(require 'ruby-mode)
(require 'rhtml-mode)
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))

(require 'feature-mode)

; set to load inf-ruby and set inf-ruby key definition in ruby-mode.
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(eval-after-load "ruby" '(load-library "rdebug"))

(load "flymake-ruby.el")

;---------------------------------------------------------
;       config
;---------------------------------------------------------

(setq auto-mode-alist (append
    '(("\\.rb$"      . ruby-mode)
      ("\\.rake$"    . ruby-mode)
      ("Rakefile$"   . ruby-mode)
      ("\\.rhtml$"   . rhtml-mode)
      ("\\.erb$"     . rhtml-mode)
      ("\\.yml\\..*$" . yaml-mode))
    auto-mode-alist))

(defun ruby-eval-buffer () (interactive)
    "Evaluate the buffer with ruby."
    (shell-command-on-region (point-min) (point-max) "ruby"))

(add-hook 'ruby-mode-hook (lambda ()
                            (font-lock-mode t)
                            (setq indent-tabs-mode nil)
                            (setq ruby-deep-indent-paren nil)
                            ;(ruby-electric-mode nil)
                            (setq ruby-indent-level 4)
                            (setq fill-column 90)
                            (define-key ruby-mode-map "\C-c\C-c" 'ruby-eval-buffer)
                            (define-key ruby-mode-map (kbd "RET") 'newline-and-indent)
                            (inf-ruby-keys)
                            ))

;(setq ruby-indent-level 4)    



(font-lock-add-keywords 'ruby-mode
    '(("\\<\\(FIXME\\):" 1 font-lock-warning-face t)
      ("\\<\\(WARNING\\):" 1 font-lock-warning-face t)
      ("\\<\\(NOTE\\):" 1 font-lock-warning-face t)
      ("\\<\\(IMPORTANT\\):" 1 font-lock-warning-face t)
      ("\\<\\(TODO\\):" 1 font-lock-warning-face t)
      ("\\<\\(TBC\\)" 1 font-lock-warning-face t)
      ("\\<\\(TBD\\)" 1 font-lock-warning-face t))
)

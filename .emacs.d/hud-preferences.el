; HUD/Preferences

(setq inhibit-startup-message t) ;; Get rid of the GNU splash screen
(setq line-number-mode t)        ;; Put line number in display
(hl-line-mode 't)                ;; highlight current line
(blink-cursor-mode nil)
(show-paren-mode t)                ;; show matching parens
(setq display-time-day-and-date t) ;; Make time include date too
(display-time)                     ;;Show the time in the status bar

;EMACS server - invocation w/ emacsclient
;(server-mode 1) ;; Turn on the Emacs Server
;(global-set-key [C-f4] 'server-edit)

(setq default-fill-column 79)  ;; Set auto-fill column
(setq require-final-newline t) ;; Always end a file with a newline.
(setq next-line-add-newlines nil) ;; Stop at the end of the file, not just add lines.
(setq mac-pass-command-to-system nil)   ;avoid hiding with M-h

(transient-mark-mode t)                 ;display selection
(fset 'yes-or-no-p 'y-or-n-p)           ;replace y-e-s by y
(setq ls-lisp-dirs-first t)             ;display dirs first in dired
(setq x-select-enable-clipboard t)      ;use system clipboard
(show-paren-mode 1)                     ;match parenthesis
(column-number-mode 1)                  ;show column number

(setq visible-bell t)                 ;; bell gets really annoying
(setq ring-bell-function (lambda ())) ;get rid of bell completely

(setq frame-title-format "Emacs - %b")
(fset 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist '(("." . "~/.emacs-backups"))) ; stop leaving backup~ turds scattered everywhere
(setq auto-save-default nil)

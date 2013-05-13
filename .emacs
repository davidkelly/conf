(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system       'utf-8)
(set-language-environment   "UTF-8")

; Use option key as META, for parity with Terminal emacs
(setq mac-option-modifier 'meta)

; Tell Carbon emacs to NOT show the stupid useless toolbar
(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

; Tell AquaMacs not to display startup stuff
(setq inhibit-startup-echo-area-message t)

(setq load-path (cons "~/.emacs.d" load-path))

(setq load-path (cons "~/.emacs.d/color-theme" load-path))

(load "colors.el")
(load "tab-behavior.el")
(load "hud-preferences.el")
(load "color-theme-solarized.el")
(color-theme-solarized-dark)


;DK: line numbering stuff
(require 'linum) ;; Line numbering - M-x linum
(global-linum-mode 1)

;---------------------------------------------------------
; Markdown (.markdown and .md files only)
;---------------------------------------------------------
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;---------------------------------------------------------
; Go
;---------------------------------------------------------
(require 'go-mode-load)

;---------------------------------------------------------
; nxhtml
;---------------------------------------------------------

(setq nxhtml-global-minor-mode t
      mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil
      nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))
(add-to-list 'auto-mode-alist '("\\.tmpl\\'" . nxhtml-mumamo-mode))

;---------------------------------------------------------
; javascript
;---------------------------------------------------------

(setq load-path (cons  "~/.emacs.d/js" load-path))
(require 'espresso-mode)
(add-to-list 'auto-mode-alist '("\\.js" . espresso-mode))


;---------------------------------------------------------
; ruby
;---------------------------------------------------------

(setq load-path (cons "~/.emacs.d/ruby-mode" load-path))
(load "env-ruby.el")


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(face-font-family-alternatives (quote (("anonymous" "courier" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(show-paren-mode t)
 '(tramp-encoding-shell "/bin/bash")
 '(tramp-verbose 2)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; org stuff
(add-to-list 'auto-mode-alist'("\\.org\\’" . org-mode)) 
(add-hook 'org-mode-hook 'turn-on-font-lock) 
(global-set-key "\C-cl" 'org-store-link) 
(global-set-key "\C-ca" 'org-agenda) 
(global-set-key "\C-cb" 'org-iswitchb)


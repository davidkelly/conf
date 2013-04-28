; colors, faces, etc

(global-font-lock-mode 1)
(setq font-lock-maximum-decoration 't)
(set-cursor-color "yellow")

;; Set the Status Bar to nice colours
;(set-face-foreground 'modeline "blue")

; textmate chocolate
;(set-background-color "#221E1E")
;(set-foreground-color "#DADAD3")
;(set-cursor-color "yellow")

;; Look at the pretty colors!
(require 'color-theme)
(color-theme-initialize)

;; dark
(color-theme-tty-dark)
;(color-theme-clarity)
;(color-theme-lethe)
;(color-theme-midnight)
;(color-theme-jonadabian)
;(color-theme-renegade)
;(color-theme-charcoal-black)
;(color-theme-billw)
;(color-theme-comidia)
;(color-theme-late-night)

;; light
;(color-theme-subtle-hacker)
;(color-theme-snowish)

; default
;(color-theme-snowish)
;(color-theme-charcoal-black)

(defun toggle-color-theme ()
  "Switch to/from night color scheme."
  (interactive)
  (require 'color-theme)
  (if (eq (frame-parameter (next-frame) 'background-mode) 'light) ; THIS ONE TOO
      (color-theme-snapshot)            ; restore default (light) colors
    ;; create the snapshot if necessary
    (when (not (commandp 'color-theme-snapshot))
      (fset 'color-theme-snapshot (color-theme-make-snapshot)))
    
    (color-theme-charcoal-black)
    ;(color-theme-snowish)
  )
)
    
;(global-set-key (kbd "<f9>") 'toggle-color-theme)

(defun toggle-night-theme ()
  (interactive)
  (color-theme-charcoal-black))
(defun toggle-day-theme ()
  (interactive)
  (color-theme-snowish))

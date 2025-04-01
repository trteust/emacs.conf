;; Let's put packages in another file
(load "packages")

;; And the same for keybindings
(load "keybindings")
;; Always ensure each package is installed
(setopt use-package-always-ensure t)

;; Turn on the visual bell
(setopt visual-bell t)

;; And turn off the audio bell
(setopt ring-bell-function 'ignore)

;; Turn off the scrollbar
(scroll-bar-mode -1)

;; Turn off the toolbar
(tool-bar-mode -1)

;; Turn off the menubar
(menu-bar-mode -1)

;; Show line numbers
(setopt line-number-mode nil)

;; And column number
(setopt column-number-mode t)

;; Better underlining
(setopt x-underline-at-descent-line nil)

;; Show trailing whitespace
(setopt show-trailing-whitespace t)

;; Smooth scrolling
(pixel-scroll-precision-mode)

;; Turn on which-key
(which-key-mode)

;; Turn off the blinking cursor
(blink-cursor-mode -1)

;; Show recent files M-x recentf-open-files
(recentf-mode 1)
(setopt history-length 15)
(savehist-mode 1)

;; Remember and restore the last cursor location
(save-place-mode 1)

;; Don't open dialog boxs to confirm
(setopt use-dialog-box nil)

;; Place customization variables in a seperate file
(setopt custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)

;; Auto update directory structure when using dired
(setopt global-auto-revert-non-file-buffers t)

;; Set the tab width to 8 spaces
(setopt tab-width 8
	indent-tabs-mode nil)

(put 'upcase-region 'disabled nil)

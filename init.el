;; Turn on the visual bell
(setq visual-bell t)

;; And turn off the audio bell
(setq ring-bell-function 'ignore)

;; Turn off the scroll bar
(scroll-bar-mode -1)

;; Show line numbers
(global-display-line-numbers-mode 1)

;; Theme stuff
(load-theme 'catppuccin t)

;; Highlight the current line
(hl-line-mode t)

;; Turn off the blinking cursor
(blink-cursor-mode -1)

;; Show recent files M-x recentf-open-files
(recentf-mode 1)
(setq history-length 15)
(savehist-mode 1)

;; Remember and restore the last cursor location
(save-place-mode 1)

;; Don't open dialog boxs to confirm
(setq use-dialog-box nil)

;; Place customization variables in a seperate file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)

;; Auto update directory structure when using dired
(setq global-auto-revert-non-file-buffers t)

;; Set the tab width to 8 spaces
(setq-default tab-width 8
	      indent-tabs-mode nil)

(setq c-basic-offsett 4)

;; Set up package repositorys
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                         ("melpa". "https://melpa.org/packages/")))
(package-initialize)


;; Keybinds
;; Overwrite list buffers command to use ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(put 'upcase-region 'disabled nil)

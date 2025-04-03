(use-package org
  :pin gnu)

;; Must do this so the agenda knows where to look for my files
(setq org-agenda-files '("/sandbox/org/"))

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link  t)

;; Associate all org files with org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)

;; Remap the change priority keys to use the UP or DOWN key
(define-key org-mode-map (kbd "C-c <up>") 'org-priority-up)
(define-key org-mode-map (kbd "C-c <down>") 'org-priority-down)

;; Shortcuts for storing links, viewing the agenda, and starting a capture
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)

;; When you want to change the level of an org item, use SMR
(define-key org-mode-map (kbd "C-c C-g C-r") 'org-shiftmetaright)

;; Hide the markers so you just see bold text as BOLD-TEXT and not *BOLD-TEXT*
(setq org-hide-emphasis-markers t)

;; Wrap the lines in org mode so that things are easier to read
(add-hook 'org-mode-hook 'visual-line-mode)

;; Additional utilities
(use-package org-super-agenda)
(use-package comment-tags)

;; Work Log Setup
(setq org-capture-templates
      '(
        ("j" "Work Log Entry"
         entry (file+datetree "/sandbox/org/work-log.org")
         "* %?"
         :empty-lines 0)


        ("n" "Note"
         entry (file+headline "/sandbox/org/notes.org" "Infodump")
         "** %?"
         :empty-lines 0)

        ("g" "General To-Do"
         entry (file+headline "/sandbox/org/todos.org" "General Tasks")
         "* TODO [#B] %?\n:Created: %T\n "
         :empty-lines 0)

        ("c" "Code To-Do"
         entry (file+headline "/sandbox/org/todos.org" "Code Related Tasks")
         "* TODO [#B] %?\n:Created: %T\n%i\n%a\nProposed Solution: "
         :empty-lines 0)

        ("m" "Meeting"
         entry (file+datetree "/sandbox/org/meetings.org")
         "* %? :meeting:%^g \n:Created: %T\n** Attendees\n*** \n** Notes\n** Action Items\n*** TODO [#A] "
         :tree-type week
         :clock-in t
         :clock-resume t
         :empty-lines 0)
        ))

;; Additional status for todos
(setq org-todo-keywords
      '((sequence "TODO(t)" "SCOPING(s)" "IN-PROGRESS(i@/!)" "PAUSED(p)" "TESTING(v!)" "|" "DONE(d!)" "WONT-DO(w@/!)") 
       ))

(setq org-todo-keyword-faces
      '(
        ("TODO" . (:foreground "GoldenRod" :weight bold))
        ("SCOPING" . (:foreground "DeepPink" :weight bold))
        ("IN-PROGRESS" . (:foreground "Cyan" :weight bold))
        ("PAUSED" . (:foreground "GoldenRod" :weight bold))
        ("TESTING" . (:foreground "Cyan" :weight bold))
        ("DONE" . (:foreground "LimeGreen" :weight bold))
        ("WONT-DO" . (:foreground "LimeGreen" :weight bold))
        ))


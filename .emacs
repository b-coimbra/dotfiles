;;(setq user-emacs-directory (expand-file-name ".emacs.d"))

(setq package-enable-at-startup nil) (package-initialize)

;; load MinGW binaries
;;(setenv "PATH" (concat (getenv "PATH") ";" (expand-file-name "MinGW/bin")))
;;(setq exec-path (append exec-path (list (expand-file-name "MinGW/bin"))))

;; scroll with C-u for evil-mode
(setq evil-want-C-u-scroll t)

(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq vc-follow-symlinks t )				       ; don't ask for confirmation when opening symlinked file
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq coding-system-for-read 'utf-8 )	; use utf-8 by default
(setq coding-system-for-write 'utf-8 )
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.
(setq default-fill-column 80)		; toggle wrapping text at the 80th character
(setq initial-scratch-message "") ; empty message in *scratch* buffer

; list the packages I want
(setq package-list '(ivy))

; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

;; packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

; activate all the packages (in particular autoloads)
(package-initialize)

(load-theme 'arjen-grey t)

;; enable company mode
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
      (if (equal 'fullboth current-value)
        (if (boundp 'old-fullscreen) old-fullscreen nil)
        (progn (setq old-fullscreen current-value)
          'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)

(toggle-fullscreen)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-parameter nil 'fullscreen 'fullboth)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

(require 'which-key)
(which-key-mode)

(require 'powerline-evil)
(require 'powerline)
(powerline-evil-vim-theme)
(setq powerline-default-separator 'arrow-fade)

(setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "C-`") 'winum-select-window-by-number)
      (define-key map (kbd "M-0") 'winum-select-window-0-or-10)
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      (define-key map (kbd "M-5") 'winum-select-window-5)
      (define-key map (kbd "M-6") 'winum-select-window-6)
      (define-key map (kbd "M-7") 'winum-select-window-7)
      (define-key map (kbd "M-8") 'winum-select-window-8)
      map))

(require 'winum)
(winum-mode)

(require 'spaceline-config)
(spaceline-spacemacs-theme)
(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-startup-banner "~/emacs-splash.png")

(require 'evil)
(evil-mode 1)

;; rebind a couple of Emacs's movement keys for evil-mode
(define-key evil-insert-state-map "\C-e" nil)
(define-key evil-insert-state-map "\C-a" nil)
(define-key evil-insert-state-map "\C-y" nil)
(define-key evil-insert-state-map "\C-p" nil)
(define-key evil-insert-state-map "\C-n" nil)
(define-key evil-insert-state-map "\C-d" nil)

;; Diminish
(require 'diminish)
(diminish 'ivy-mode)
(diminish 'undo-tree-mode)
(diminish 'flycheck-mode)
(diminish 'drag-stuff-mode)
(diminish 'abbrev-mode)

(set-frame-font
  "-outline-Consolas-normal-normal-normal-mono-14-*-*-*-c-*-iso8859-1")

(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(global-set-key (kbd "C-;") 'avy-goto-char) ;; avy search by char

(setq-default c-basic-offset 4)

(global-set-key (kbd "C-x C-g") 'compile)

;; enable auto-complete
;; (ac-config-default)

(emmet-mode)

(linum-relative-global-mode)
;(global-linum-mode) ;; set linum mode

;; switching buffers
(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(set-face-attribute 'vertical-border
		    nil
		    :foreground "#2D2D2D")

;; put space in linum
(setq linum-format " %d ")

;; enable workgroups
(require 'workgroups2)
(workgroups-mode 1)

;; enable drag-stuff-up
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

(require 'flycheck)
(global-flycheck-mode)

;; enable multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; enable web-mode for html files
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; hook emmet to web-mode
;; (add-hook 'web-mode-hook 'emmet-mode)
;; (with-eval-after-load 'web-mode
;;   (define-key web-mode-map (kbd "TAB") 'emmet-expand-line))

;; enable neotree
(global-set-key [f8] 'neotree-toggle)

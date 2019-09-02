;; -*- mode: emacs-lisp -*-
;;; .spacemacs --- Initialization file for Spacemacs
;;; Commentary:
;; This file is loaded by Spacemacs at startup.
;;; Code:
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs-base
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation nil
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ruby
     nlinum
     html
     ;; html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     javascript
     ;; git
     ;; markdown
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      spaceline-all-the-icons
                                      rust-mode
                                      tide
                                      typescript-mode
                                      ;; lsp-mode
                                      ;; lsp-ui
                                      ;; company-lsp
                                      company
                                      evil-mc
                                      dart-mode
                                      iedit
                                      doom-themes
                                      doom-modeline
                                      magit
                                      evil-magit
                                      paren-face
                                      treemacs
                                      treemacs-evil
                                      evil-surround
                                      evil-commentary
                                      gruvbox-theme
                                      kaolin-themes
                                      ranger
                                      eyebrowse
                                      flycheck
                                      yasnippet
                                      yasnippet-snippets
                                      spaceline
                                      powerline
                                      powerline-evil
                                      projectile
                                      winum
                                      racket-mode
                                      haskell-mode
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    winner
                                    tern
                                    wgrep
                                    smex
                                    pcre2el
                                    macrostep
                                    flyspell
                                    hydra
                                    ivy-hydra
                                    flx
                                    evil-visualstar
                                    goto-chg
                                    elisp-slime-nav
                                    helm
                                    exec-path-from-shell
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fantasque Sans Mono"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc?
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "My dotspacemacs."
  (spacemacs/load-theme 'doom-spacegrey)
  (spacemacs/toggle-highlight-current-line-globally-off)
  (spacemacs/toggle-visual-line-navigation)

  (setq-default auto-window-vscroll nil
                js-indent-level 2
                typescript-indent-level 2
                inhibit-compacting-font-caches t)

  ;; Ligatures from the Fira Code font
  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")

 (defconst fira-code-font-lock-keywords-alist
    (mapcar (lambda (regex-char-pair)
              `(,(car regex-char-pair)
                (0 (prog1 ()
                     (compose-region (match-beginning 1)
                                     (match-end 1)
                                     ;; The first argument to concat is a string containing a literal tab
                                     ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
            '(("\\(www\\)"                   #Xe100)
              ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
              ("\\(\\*\\*\\*\\)"             #Xe102)
              ("\\(\\*\\*/\\)"               #Xe103)
              ("\\(\\*>\\)"                  #Xe104)
              ("[^*]\\(\\*/\\)"              #Xe105)
              ("\\(\\\\\\\\\\)"              #Xe106)
              ("\\(\\\\\\\\\\\\\\)"          #Xe107)
              ("\\({-\\)"                    #Xe108)
              ;; ("\\(\\[\\]\\)"                #Xe109)
              ;; ("\\(::\\)"                    #Xe10a)
              ;; ("\\(:::\\)"                   #Xe10b)
              ;; ("[^=]\\(:=\\)"                #Xe10c)
              ("\\(!!\\)"                    #Xe10d)
              ("\\(!=\\)"                    #Xe10e)
              ("\\(!==\\)"                   #Xe10f)
              ("\\(-}\\)"                    #Xe110)
              ("\\(--\\)"                    #Xe111)
              ("\\(---\\)"                   #Xe112)
              ("\\(-->\\)"                   #Xe113)
              ("[^-]\\(->\\)"                #Xe114)
              ("\\(->>\\)"                   #Xe115)
              ("\\(-<\\)"                    #Xe116)
              ("\\(-<<\\)"                   #Xe117)
              ("\\(-~\\)"                    #Xe118)
              ("\\(#{\\)"                    #Xe119)
              ("\\(#\\[\\)"                  #Xe11a)
              ("\\(##\\)"                    #Xe11b)
              ("\\(###\\)"                   #Xe11c)
              ("\\(####\\)"                  #Xe11d)
              ("\\(#(\\)"                    #Xe11e)
              ("\\(#\\?\\)"                  #Xe11f)
              ("\\(#_\\)"                    #Xe120)
              ("\\(#_(\\)"                   #Xe121)
              ;; ("\\(\\.-\\)"                  #Xe122)
              ("\\(\\.=\\)"                  #Xe123)
              ;; ("\\(\\.\\.\\)"                #Xe124)
              ;; ("\\(\\.\\.<\\)"               #Xe125)
              ;; ("\\(\\.\\.\\.\\)"             #Xe126)
              ("\\(\\?=\\)"                  #Xe127)
              ("\\(\\?\\?\\)"                #Xe128)
              ("\\(;;\\)"                    #Xe129)
              ("\\(/\\*\\)"                  #Xe12a)
              ("\\(/\\*\\*\\)"               #Xe12b)
              ("\\(/=\\)"                    #Xe12c)
              ("\\(/==\\)"                   #Xe12d)
              ("\\(/>\\)"                    #Xe12e)
              ("\\(//\\)"                    #Xe12f)
              ("\\(///\\)"                   #Xe130)
              ("\\(&&\\)"                    #Xe131)
              ("\\(||\\)"                    #Xe132)
              ("\\(||=\\)"                   #Xe133)
              ("[^|]\\(|=\\)"                #Xe134)
              ("\\(|>\\)"                    #Xe135)
              ("\\(\\^=\\)"                  #Xe136)
              ("\\(\\$>\\)"                  #Xe137)
              ("\\(\\+\\+\\)"                #Xe138)
              ("\\(\\+\\+\\+\\)"             #Xe139)
              ("\\(\\+>\\)"                  #Xe13a)
              ("\\(=:=\\)"                   #Xe13b)
              ("[^!/]\\(==\\)[^>]"           #Xe13c)
              ("\\(===\\)"                   #Xe13d)
              ("\\(==>\\)"                   #Xe13e)
              ("[^=]\\(=>\\)"                #Xe13f)
              ("\\(=>>\\)"                   #Xe140)
              ("\\(<=\\)"                    #Xe141)
              ("\\(=<<\\)"                   #Xe142)
              ("\\(=/=\\)"                   #Xe143)
              ("\\(>-\\)"                    #Xe144)
              ("\\(>=\\)"                    #Xe145)
              ("\\(>=>\\)"                   #Xe146)
              ("[^-=]\\(>>\\)"               #Xe147)
              ("\\(>>-\\)"                   #Xe148)
              ("\\(>>=\\)"                   #Xe149)
              ("\\(>>>\\)"                   #Xe14a)
              ("\\(<\\*\\)"                  #Xe14b)
              ("\\(<\\*>\\)"                 #Xe14c)
              ("\\(<|\\)"                    #Xe14d)
              ("\\(<|>\\)"                   #Xe14e)
              ("\\(<\\$\\)"                  #Xe14f)
              ("\\(<\\$>\\)"                 #Xe150)
              ("\\(<!--\\)"                  #Xe151)
              ("\\(<-\\)"                    #Xe152)
              ("\\(<--\\)"                   #Xe153)
              ("\\(<->\\)"                   #Xe154)
              ("\\(<\\+\\)"                  #Xe155)
              ("\\(<\\+>\\)"                 #Xe156)
              ("\\(<=\\)"                    #Xe157)
              ("\\(<==\\)"                   #Xe158)
              ("\\(<=>\\)"                   #Xe159)
              ("\\(<=<\\)"                   #Xe15a)
              ("\\(<>\\)"                    #Xe15b)
              ("[^-=]\\(<<\\)"               #Xe15c)
              ("\\(<<-\\)"                   #Xe15d)
              ("\\(<<=\\)"                   #Xe15e)
              ("\\(<<<\\)"                   #Xe15f)
              ("\\(<~\\)"                    #Xe160)
              ("\\(<~~\\)"                   #Xe161)
              ("\\(</\\)"                    #Xe162)
              ("\\(</>\\)"                   #Xe163)
              ("\\(~@\\)"                    #Xe164)
              ("\\(~-\\)"                    #Xe165)
              ("\\(~=\\)"                    #Xe166)
              ("\\(~>\\)"                    #Xe167)
              ("[^<]\\(~~\\)"                #Xe168)
              ("\\(~~>\\)"                   #Xe169)
              ("\\(%%\\)"                    #Xe16a)
              ;;("\\(x\\)"                     #Xe16b)
              ;; ("[^:=]\\(:\\)[^:=]"           #Xe16c)
              ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
              ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

  (defun add-fira-code-symbol-keywords ()
    (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  (add-hook 'prog-mode-hook
            #'add-fira-code-symbol-keywords)

  ;; lambda symbol for haskell
  (defun pretty-lambdas-haskell ()
    (font-lock-add-keywords
     nil `((,(concat "\\(" (regexp-quote "\\") "\\)")
            (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                      ,(make-char 'greek-iso8859-7 107))
                      nil))))))

  (use-package haskell-mode
    :ensure t
    :hook (haskell-mode . pretty-lambdas-haskell))

  (use-package hideshow
    :hook (prog-mode . hs-minor-mode))

  (use-package savehist
    :init
    (savehist-mode -1))

  (use-package simple
    :init
    (visual-line-mode -1))

  (use-package paren
    :init
    (show-paren-mode 1))

  (use-package loaddefs
    :init
    (setq mouse-avoidance-mode 'animate))

  ;; (use-package kaolin-themes
  ;;   :config
  ;;   (load-theme 'kaolin-dark)
  ;;   (setq kaolin-themes-bold t
  ;;         kaolin-themes-italic t
  ;;         kaolin-themes-underline t
  ;;         kaolin-themes-distinct-company-scrollbar t))

  (use-package ranger
    :ensure t
    :defer t
    :bind (("M-m a r" . ranger)
           ("M-m a d" . deer))
    :config
    (ranger-override-dired-mode t))

  (use-package eshell
    :ensure t
    :bind ("M-m '" . eshell))

  (use-package iedit
    :ensure t
    :defer t
    :bind ("M-m s e" . iedit-mode))

  (use-package eyebrowse
    :ensure t
    :config
    (eyebrowse-mode)
    (eyebrowse-setup-opinionated-keys))

  ;; (use-package vc
  ;;   :ensure t
  ;;   :config
  ;;   (defadvice vc-mode-line (after strip-backend () activate)
  ;;     (when (stringp vc-mode)
  ;;       (let ((gitlogo (replace-regexp-in-string "^ Git." " " vc-mode)))
  ;;         (setq vc-mode gitlogo)))))

  (use-package magit
    :ensure t
    :defer t
    :bind (("M-m g s" . magit-status)))

  (use-package evil
    :ensure t
    :init
    (setq-default evil-escape-key-sequence "jk"))

  (use-package evil-magit
    :ensure t
    :after evil magit
    :config
    (evil-magit-init))

  (use-package evil-surround
    :ensure t
    :after evil
    :config
    (global-evil-surround-mode 1))

  (use-package evil-mc
    :ensure t
    :after evil
    :init
    (global-evil-mc-mode 1))

  (use-package tide
    :ensure t
    :hook (before-save-hook . tide-format-before-save)
    :init (add-hook 'typescript-mode-hook #'tide-setup)
    :bind (("M-m t e" . tide-project-errors)
           ("M-m t r" . tide-references)
           ("M-m t R" . tide-restart-server)
           ("M-m t s" . tide-rename-symbol)
           ("M-m t f" . tide-fix)
           ("M-m t R" . tide-rename-file)
           ("M-m t j" . tide-jump-to-definition)
           ("M-m t b" . tide-jump-back))
    :config
    (tide-setup)
    (eldoc-mode 1)
    (flycheck-mode 1)
    (tide-hl-identifier-mode 1))

  (use-package ivy
    :ensure t
    :bind (("C-:" . avy-goto-char)
           ("M-m ;" . avy-goto-char)
           ("C-;" . avy-goto-word-1))
    :config
    (setq ivy-count-format "(%d/%d) "
          avy-background t))

  (use-package flycheck
    :ensure t
    :hook (prog-mode . flycheck-mode))

  (use-package zone
    :ensure t
    :config
    (setq zone-when-idle 30))

  (use-package electric
    :ensure t
    :config
    (electric-pair-mode 1))

  (use-package winum
    :ensure t
    :init
    (setq winum-keymap
          (let ((map (make-sparse-keymap)))
            (define-key evil-normal-state-map (kbd "C-`")   'winum-select-window-by-number)
            (define-key evil-normal-state-map (kbd "SPC 0") 'winum-select-window-0-or-10)
            (define-key evil-normal-state-map (kbd "SPC 1") 'winum-select-window-1)
            (define-key evil-normal-state-map (kbd "SPC 2") 'winum-select-window-2)
            (define-key evil-normal-state-map (kbd "SPC 3") 'winum-select-window-3)
            (define-key evil-normal-state-map (kbd "SPC 4") 'winum-select-window-4)
            (define-key evil-normal-state-map (kbd "SPC 5") 'winum-select-window-5)
            (define-key evil-normal-state-map (kbd "SPC 6") 'winum-select-window-6)
            (define-key evil-normal-state-map (kbd "SPC 7") 'winum-select-window-7)
            (define-key evil-normal-state-map (kbd "SPC 8") 'winum-select-window-8)
            map))
    :config
    (winum-mode))

  (use-package org
    :ensure t
    :defer t
    :config
    (setq org-display-inline-images t)
    (org-babel-do-load-languages
     'org-babel-load-languages '((C       . t)
                                 (shell   . t)
                                 (ruby    . t)
                                 (python  . t)
                                 (haskell . t))))

  (use-package yasnippet
    :ensure t
    :init
    (yas-global-mode 1)
    :config
    (setq yas-prompt-functions 'yas-ido-prompt))

  (use-package yasnippet-snippets
    :after yasnippet
    :ensure t)

  ;; (use-package lsp
  ;;   ;; :hook (XXX-mode . lsp)
  ;;   :commands lsp)

  ;; (use-package lsp-ui :commands lsp-ui-mode)
  ;; (use-package company-lsp :commands company-lsp)

  (use-package company
    :ensure t
    :init (global-company-mode)
    :config
    (add-to-list 'company-backends
                 '(company-yasnippet
                   company-capf
                   company-dabbrev))
    (setq company-dabbrev-downcase nil
          company-echo-delay 0
          company-idle-delay 0.1
          company-minimum-prefix-length 1
          company-alignip-align-annotations t))

  (use-package treemacs
    :ensure t
    :defer t
    :bind (("M-m t t" . treemacs))
    :config
    (setq treemacs-no-png-images t
          treemacs-width 25))

  (use-package treemacs-evil
    :after treemacs evil
    :ensure t)

  (use-package git-gutter-fringe+
    :ensure t
    :config
    (git-gutter-fr+-minimal)
    (setq git-gutter-fr+-side 'left-fringe))

  (use-package paren-face
    :ensure t
    :hook (prog-mode . paren-face-mode)
    :config
    (setq paren-face-regexp "[\]\[\(\)\{\}\;]"))

  (use-package evil-commentary
    :ensure t
    :config
    (evil-commentary-mode))

  ;; (use-package spaceline
  ;;   :ensure t
  ;;   :init
  ;;   (progn
  ;;     (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  ;;     (setq-default powerline-default-separator 'slant)
  ;;     (setq spaceline-separator-dir-left '(right . right))
  ;;     ;; (setq spaceline-separator-dir-right '(right . right))
  ;;     )
  ;;   :config
  ;;   (spaceline-emacs-theme)
  ;;   (setq spaceline-buffer-encoding-abbrev-p nil
  ;;         spaceline-workspace-number-p t
  ;;         spaceline-window-numbers-unicode nil
  ;;         spaceline-minor-modes-p nil
  ;;         spaceline-major-mode-p nil
  ;;         spaceline-buffer-size-p t
  ;;         spaceline-window-number-p t
  ;;         spaceline-buffer-id-p t
  ;;         spaceline-buffer-size-p t)
  ;;   (powerline-reset))

  (use-package doom-modeline
    :ensure t
    :config (doom-modeline-mode 1))

  (use-package projectile
    :ensure t
    :defer t
    :config
    (projectile-mode)
    (setq projectile-enable-caching t))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-safe-themes
   (quote
    ("8c847a5675ece40017de93045a28ebd9ede7b843469c5dec78988717f943952a" "f5568ed375abea716d1bdfae0316d1d179f69972eaccd1f331b3e9863d7e174a" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "a9d67f7c030b3fa6e58e4580438759942185951e9438dd45f2c668c8d7ab2caf" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "bee55ba5e878d0584db9b2fb33f75c348a3008fcfe8e05ab8cae897ca604fd95" "6e38567da69b5110c8e19564b7b2792add8e78a31dfb270168509e7ae0147a8d" "9f08dacc5b23d5eaec9cccb6b3d342bd4fdb05faf144bdcd9c4b5859ac173538" "ae4e0372ff28b6bf8f1cca8c081a7a63fb7cd2d5a139309cc4fa55d0f507f748" "42c5bc5f5fe4f35aa0c44a50744e17b59ee7c4ae684daf1a9162da87bd639ccb" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (shrink-path evil-tutor company-lsp lsp-ui spinner dash-functional lsp-mode auto-complete mode-icons rainbow-delimiters vc-mode airline-themes toml-mode racer flycheck-rust cargo markdown-mode 0blayout persp-mode workgroups2 rust-mode apropospriate-theme doom-modeline spaceline-all-the-icons yasnippet-snippets winum which-key web-mode web-beautify use-package treemacs-evil tide tagedit spaceline slim-mode scss-mode sass-mode ranger racket-mode pug-mode powerline-evil paren-face nlinum-relative livid-mode kaolin-themes json-mode js2-refactor js-doc iedit helm-make haskell-mode gruvbox-theme git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip eyebrowse evil-surround evil-mc evil-magit evil-escape evil-commentary emmet-mode doom-themes diminish diff-hl dart-mode counsel-projectile company coffee-mode bind-map auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; .spacemacs ends here

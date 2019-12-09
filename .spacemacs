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
     org
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
                                      telephone-line
                                      org-bullets
                                      crystal-mode
                                      flycheck-crystal
                                      rjsx-mode
                                      react-snippets
                                      ivy-rich
                                      counsel-etags
                                      swiper
                                      rust-mode
                                      typescript-mode
                                      lsp-mode
                                      lsp-ui
                                      company-lsp
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
                                    helm
                                    elisp-slime-nav
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
   dotspacemacs-default-font '("Iosevka"
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
  (spacemacs/load-theme 'gruvbox-custom)
  (spacemacs/toggle-highlight-current-line-globally-off)
  (spacemacs/toggle-visual-line-navigation)

  (setq-default auto-window-vscroll nil
                js-indent-level 2
                typescript-indent-level 2
                inhibit-compacting-font-caches t)

  (set-face-attribute 'vertical-border
                      nil
                      :background "#000000")

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

  ;; (use-package doom-themes
  ;;   :ensure t
  ;;   :config
  ;;   (spacemacs/load-theme 'doom-nord)
  ;;   (setq doom-themes-enable-bold t
  ;;         doom-themes-enable-italic t))

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

  (use-package evil-commentary
    :ensure t
    :config
    (evil-commentary-mode))

  (use-package treemacs-evil
    :after treemacs evil
    :ensure t)

  (use-package ivy
    :ensure t
    :bind (("C-:"     . avy-goto-char)
           ("M-m ;"   . avy-goto-char)
           ("C-;"     . avy-goto-word-1))
    :config
    (setq ivy-count-format "(%d/%d) "
          avy-background t))

  (use-package ivy-rich
    :after ivy
    :init
    (ivy-rich-mode 1)
    :config
    (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

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

  (use-package org-bullets
    :ensure t
    :hook (org-mode . org-bullets-mode))

  (use-package yasnippet
    :ensure t
    :init
    (yas-global-mode 1)
    :config
    (setq yas-prompt-functions 'yas-ido-prompt))

  (use-package yasnippet-snippets
    :after yasnippet
    :ensure t)

  (use-package counsel-etags
    :defer t
    :ensure t
    :bind (("C-]" . counsel-etags-find-tag-at-point))
    :init
    (add-hook 'prog-mode-hook
              (lambda ()
                (add-hook 'after-save-hook
                          'counsel-etags-virtual-update-tags 'append 'local)))
    :config
    (setq counsel-etags-update-interval 60
          tags-revert-without-query t)
    (add-to-list 'counsel-etags-ignore-directories "build"))

  (use-package lsp-mode
    :ensure t
    :bind (("M-m ."   . xref-find-definitions)
           ("M-m ,"   . xref-pop-marker-stack)
           ("M-m l R" . lsp-rename))
    :hook ((js2-mode        . lsp-deferred)
           (js-mode         . lsp-deferred)
           (rjsx-mode       . lsp-deferred)
           (typescript-mode . lsp-deferred)
           (rust-mode       . lsp-deferred)
           (ruby-mode       . lsp-deferred))
    :commands (lsp lsp-deferred))

  (use-package lsp-ui
    :ensure t
    :after lsp-mode
    :commands lsp-ui-mode
    :hook (lsp-mode . lsp-ui-mode)
    :bind (("M-m l i" . lsp-ui-peek-find-implementation)
           ("M-m l r" . lsp-ui-peek-find-references)
           ("M-m l d" . lsp-ui-peek-find-definitions)
           ("M-m l l" . lsp-ui-flycheck-list)
           ("M-m l a" . lsp-ui-sideline-apply-code-actions))
    :config
    (setq lsp-ui-doc-enable t
          lsp-ui-sideline-enable t
          lsp-ui-flycheck-enable t
          lsp-ui-flycheck-live-reporting t
          lsp-ui-sideline-toggle-symbols-info t
          lsp-ui-sideline-show-hover t
          lsp-ui-peek-enable t))

  (use-package company-lsp
    :requires company
    :commands company-lsp
    :config
    (setq company-transformers nil
          company-lsp-async t
          company-lsp-cache-candidates nil))

  (use-package company
    :ensure t
    :init (global-company-mode)
    :config
    (add-to-list 'company-backends
                 '(company-lsp
                   company-yasnippet
                   company-capf
                   company-dabbrev))
    (setq company-dabbrev-downcase nil
          company-echo-delay 0
          company-idle-delay 0.3
          company-minimum-prefix-length 1
          company-show-numbers t
          company-alignip-align-annotations t
          company-begin-commands '(self-insert-command)))

  (use-package treemacs
    :ensure t
    :defer t
    :bind (("M-m t t" . treemacs))
    :config
    ;; (kaolin-treemacs-theme)
    (doom-themes-treemacs-config)
    (setq treemacs-no-png-images nil
          treemacs-width 25))

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

  (use-package spaceline
    :ensure t
    :init
    (progn
      (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
      (setq-default powerline-default-separator 'slant)
      ;; (setq spaceline-separator-dir-left '(right . right))
      )
    :config
    (spaceline-emacs-theme)
    (setq spaceline-buffer-encoding-abbrev-p nil
          spaceline-workspace-number-p t
          spaceline-window-numbers-unicode nil
          spaceline-version-control-p nil
          spaceline-minor-modes-p nil
          spaceline-major-mode-p nil
          spaceline-buffer-size-p t
          spaceline-window-number-p t
          spaceline-buffer-id-p t
          spaceline-buffer-size-p t)
    (powerline-reset))

  ;; (use-package doom-modeline
  ;;   :ensure t
  ;;   :config
  ;;   (setq doom-modeline-major-mode-icon nil
  ;;         doom-modeline-major-mode-color-icon nil
  ;;         doom-modeline-icon (display-graphic-p)
  ;;         doom-modeline-buffer-modification-icon nil
  ;;         doom-modeline-flycheck-icon nil
  ;;         doom-modeline-checker-simple-format t
  ;;         doom-modeline-buffer-encoding nil)
  ;;   (doom-modeline-mode))

  ;; (use-package telephone-line
  ;;   :ensure t
  ;;   :config
  ;;   (telephone-line-mode))

  (use-package projectile
    :ensure t
    :defer t
    :bind (("M-m p s" . counsel-projectile-git-grep))
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
 '(custom-safe-themes (quote nil))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#C0C5CE")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2B34" "#FAC863"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2B34" "#99C794"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2B34" "#A7ADBA"))
 '(objed-cursor-color "#EC5f67")
 '(package-selected-packages
   (quote
    (epresent zone-sl zone-rainbow zone-nyan csharp-mode nimbus-theme poet-theme telephone-line org-bullets flycheck-crystal crystal-mode dap-mode bui tree-mode lv rjsx-mode jsx-mode react-snippets color-theme-sanityinc-tomorrow omnibox yasnippet-snippets winum which-key web-mode web-beautify use-package treemacs-evil tide tagedit spaceline-all-the-icons slim-mode scss-mode sass-mode rust-mode ranger racket-mode pug-mode powerline-evil paren-face org-projectile org-present org-pomodoro org-mime org-download nlinum-relative lsp-ui livid-mode kaolin-themes json-mode js2-refactor js-doc ivy-rich iedit htmlize helm-make haskell-mode gruvbox-theme gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip eyebrowse evil-surround evil-mc evil-magit evil-escape evil-commentary emmet-mode doom-themes doom-modeline diminish diff-hl dart-mode counsel-projectile counsel-etags company-lsp coffee-mode bind-map auto-compile)))
 '(pdf-view-midnight-colors (cons "#1B2B34" "#D8DEE9"))
 '(vc-annotate-background "#1B2B34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#99C794")
    (cons 40 "#b9c783")
    (cons 60 "#d9c773")
    (cons 80 "#FAC863")
    (cons 100 "#f9b55f")
    (cons 120 "#f9a35b")
    (cons 140 "#F99157")
    (cons 160 "#f18a69")
    (cons 180 "#e9847b")
    (cons 200 "#E27E8D")
    (cons 220 "#e57380")
    (cons 240 "#e86973")
    (cons 260 "#EC5f67")
    (cons 280 "#da727b")
    (cons 300 "#c98690")
    (cons 320 "#b899a5")
    (cons 340 "#C0C5CE")
    (cons 360 "#C0C5CE")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; .spacemacs ends here

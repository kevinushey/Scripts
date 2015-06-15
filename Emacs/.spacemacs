;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     c-c++
     colors
     themes-megapack
     company-mode
     emacs-lisp
     git
     (git :variables
          git-gutter-use-fringe t)
     html
     javascript
     markdown
     ruby
     shell
     smex
     syntax-checking
     ycmd
     )

   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages
   '(
     key-chord
     )

   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()

   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."

  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default

   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim

   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official

   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)

   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

   ;; The leader key
   dotspacemacs-leader-key "SPC"

   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"

   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil

   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil

   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4

   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t

   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90

   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols nil

   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t

   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil

   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all

   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil

   )

  ;; User initialization goes here

  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  ;; Remove projectile's C-c keybindings -- I prefer to just use the leader key
  ;; for these sorts of things
  (setq projectile-keymap-prefix (kbd "C-S-P"))

  ;; Don't move the cursor back when exiting insert mode.
  (setq evil-move-cursor-back nil)

  ;; Ensure line numbers always displayed
  (global-linum-mode)

  ;; Make magit quiet
  (setq magit-last-seen-setup-instructions "1.4.0")

  ;; Don't want when following symlinks
  (setq vc-follow-symlinks t)

  ;; Ensure that 'Ctrl + C' returns to Normal mode.
  (defun dotspacemacs/config/smart-ctrl-c (prompt)
    (cond
     ((or
       (evil-insert-state-p)
       (evil-normal-state-p)
       (evil-replace-state-p)
       (evil-visual-state-p))
      [escape])
     (t (kbd "C-g"))))

  (define-key key-translation-map (kbd "C-c")  'dotspacemacs/config/smart-ctrl-c)
  (define-key evil-operator-state-map (kbd "C-c") 'keyboard-quit)
  (set-quit-char "C-c")

  ;; Allow <DEL> to delete the selection in visual mode.
  (define-key evil-visual-state-map (kbd "DEL") 'evil-delete)

  ;; Use 'v', 'S-v' to expand/contract region in visual mode.
  (define-key evil-visual-state-map (kbd "v")
    (lambda ()
      (interactive)
      (er/expand-region 1)))

  (define-key evil-visual-state-map (kbd "V")
    (lambda ()
      (interactive)
      (er/expand-region -1)))

  ;; Use 'jk' in insert mode to return to normal mode. Should probably put this
  ;; in a layer.
  (key-chord-mode 1)
  (key-chord-define evil-insert-state-map "jk" 'evil-force-normal-state)

  ;; Use <S-=>, <S--> to increase, decrease the font size
  (global-set-key
   (kbd "s-=")
   (lambda ()
     (interactive)
     (let ((old-face-attribute (face-attribute 'default :height)))
       (set-face-attribute 'default nil :height (+ old-face-attribute 10)))))

  (global-set-key
   (kbd "s--")
   (lambda ()
     (interactive)
     (let ((old-face-attribute (face-attribute 'default :height)))
       (set-face-attribute 'default nil :height (- old-face-attribute 10)))))

  ;; Define a text object for replacing inbetween parens / whitespace.
  (let ((start-regex "[[:space:]\\(\\)]")
        (end-regex "[[:space:]\\(\\)]\\|$"))
    (progn
      (evil-define-text-object inner-name (count &optional beg end type)
        (evil-select-paren start-regex end-regex beg end type count nil))
      (define-key evil-inner-text-objects-map "k" 'inner-name)

      (evil-define-text-object outer-name (count &optional beg end type)
        (evil-select-paren start-regex end-regex beg end type count t))
      (define-key evil-outer-text-objects-map "k" 'outer-name)))

  ;; Add some extra motions for navigating buffers, windows quickly
  (evil-leader/set-key

    ;; Quickly select separate windows
    "<up>" 'evil-window-up
    "<down>" 'evil-window-down
    "<left>" 'evil-window-left
    "<right>" 'evil-window-right

    ;; Git extensions
    "gd" #'(lambda () (interactive) (magit-diff "HEAD"))

    ;; Miscellaneous commands
    "xf" 'dired
    )

  ;;; JavaScript

  ;; Don't indent within 'define' statements.
  (defun require-def-deindent (list index)
    (when (and (eq (nth 0 parse-status) 2)
               (save-excursion
                 (let ((tl-point (syntax-ppss-toplevel-pos parse-status)))
                   (goto-char tl-point)
                   (backward-word 1)
                   (equal "define" (buffer-substring (point) tl-point))))
               ;; only intercede if they are suggesting what the sexprs suggest
               (let ((suggested-column (js2-proper-indentation parse-status)))
                 (eq (nth index list) suggested-column))
               )
      (indent-line-to 0)
      't
      ))

  (add-hook
   'js2-mode-hook
   (lambda ()
     
     ;; Delay error checking a bit more.
     (setq js2-idle-timer-delay 2)

     (defadvice js2-indent-line (around js2-indent-line-around)
       "Don't indent if we're within a 'define' function."
       ad-do-it
       (let ((parse-status (save-excursion
                             (parse-partial-sexp (point-min) (point-at-bol))))
             positions)
         (push (current-column) positions)
         (require-def-deindent positions 0)))
     (ad-activate 'js2-indent-line)

     (flycheck-mode t)
     (tern-mode t)))

  ;;; HTML

  ;; No indent within 'script', 'style'
  (add-hook 'html-mode-hook (lambda()
                              (web-mode)
                              (setq web-mode-script-padding 0)
                              (setq web-mode-style-padding 0)
                              ))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
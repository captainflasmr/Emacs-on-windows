;; -*- lexical-binding: t; -*-

;;
;; -> core-configuration
;;
(load-file "~/.emacs.d/Emacs-vanilla/init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(misterioso))
 '(ibuffer-display-summary nil)
 '(ibuffer-formats
   '((mark modified read-only locked " " (name 40 40 :left :elide) " "
           (size 9 -1 :right) " " (mode 16 16 :left :elide) " "
           filename-and-process)
     (mark " " (name 16 -1) " " filename)))
 '(image-dired-cmd-create-thumbnail-program "magick")
 '(org-agenda-files '("d:/source/MIMESIS-OVC/README_tasks.org"))
 '(package-selected-packages '(web-mode))
 '(tab-bar-mode t)
 '(tool-bar-mode nil)
 '(warning-suppress-log-types '((frameset)))
 '(warning-suppress-types '((frameset))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-common-part ((t (:foreground "#87ceeb"))))
 '(completions-first-difference ((t (:foreground "#ffb6c1"))))
 '(cursor ((t (:background "coral"))))
 '(ediff-current-diff-A ((t (:extend t :background "#b5daeb" :foreground "#000000"))))
 '(ediff-even-diff-A ((t (:background "#bafbba" :foreground "#000000" :extend t))))
 '(ediff-fine-diff-A ((t (:background "#f4bd92" :foreground "#000000" :extend t))))
 '(ediff-odd-diff-A ((t (:background "#b8fbb8" :foreground "#000000" :extend t))))
 '(fixed-pitch ((t (:family "Consolas" :height 110))))
 '(font-lock-warning-face ((t (:foreground "#930000" :inverse-video nil))))
 '(fringe ((t (:foreground "#2d3743" :background "#2d3743"))))
 '(highlight-indent-guides-character-face ((t (:foreground "#000000"))))
 '(highlight-indent-guides-odd-face ((t (:background "#222222"))))
 '(hl-line ((t (:background "#3d4753"))))
 '(icomplete-first-match ((t (:foreground "#7c7c75" :background "#3a3a3a" :weight bold))))
 '(icomplete-selected-match ((t (:foreground "#ffffff" :background "#5f87af" :weight bold))))
 '(indent-guide-face ((t (:background "#282828" :foreground "#666666"))))
 '(mode-line ((t (:height 140 :underline nil :overline nil :box nil))))
 '(mode-line-inactive ((t (:height 140 :underline nil :overline nil :box nil))))
 '(org-column ((t (:background "#1e1e1e" :foreground "#d4d4d4"))))
 '(org-level-1 ((t (:inherit default :weight regular :height 1.0))))
 '(org-level-2 ((t (:inherit default :weight light :height 1.0))))
 '(org-level-3 ((t (:inherit default :weight light :height 1.0))))
 '(org-level-4 ((t (:inherit default :weight light :height 1.0))))
 '(org-level-5 ((t (:inherit default :weight light :height 1.0))))
 '(org-level-6 ((t (:inherit default :weight light :height 1.0))))
 '(org-link ((t (:underline nil))))
 '(org-tag ((t (:height 0.9))))
 '(tab-bar ((t (:inherit default :background "#2d3743" :foreground "#e1e1e0"))))
 '(tab-bar-tab ((t (:inherit 'highlight :background "coral" :foreground "#000000"))))
 '(tab-bar-tab-inactive ((t (:inherit default :background "#2d3743" :foreground "#e1e1e0" :box (:line-width 1 :color "#2d3743" :style flat-button)))))
 '(variable-pitch ((t (:family "Consolas" :height 110 :weight normal))))
 '(vertical-border ((t (:foreground "#000000"))))
 '(widget-button ((t (:inherit fixed-pitch :weight regular))))
 '(window-divider ((t (:foreground "black")))))

(when (eq system-type 'windows-nt)
  (let (
        (winPaths "C:/WINDOWS/system32;C:/WINDOWS;C:/WINDOWS/System32/Wbem;C:/WINDOWS/System32/WindowsPowerShell/v1.0/;C:/WINDOWS/System32/OpenSSH/;C:/Program Files/dotnet/;C:/Program Files/Git/cmd;C:/Users/vm.j.dyer/AppData/Local/Microsoft/WindowsApps;C:/Users/vm.j.dyer/.dotnet/tools;C:/Users/vm.j.dyer/AppData/Local/Programs/Microsoft VS Code/bin;C:/Users/vm.j.dyer/Downloads/protoc-31.1-win64/bin;C:/Program Files/CMake/bin;d:/Program Files/Microsoft Visual Studio/2022/Professional/MSBuild/Current/Bin;c:/Users/vm.j.dyer/Downloads/ffmpeg-7.1.1-essentials_build/bin")
        (xPaths
         `(,(expand-file-name "~/bin")
           ,(expand-file-name "~/bin/PortableGit/bin")
           ,(expand-file-name "~/bin/PortableGit/usr/bin")
           ,(expand-file-name "~/bin/Apache-Subversion/bin/")
           ,(expand-file-name "~/bin/svn2git-2.4.0/bin")
           ,(expand-file-name "~/bin/clang/bin")
           ,(expand-file-name "~/bin/hunspell/bin")
           ,(expand-file-name "~/bin/find")
           ,(expand-file-name "~/bin/cmake")
           ,(expand-file-name "C:/Program Files/Pandoc")
           ,(expand-file-name "C:/Program Files/Java/jre1.8.0_451/bin")
           ,(expand-file-name "~/bin/omnisharp-win-x64")
           ,(expand-file-name "~/bin/netcoredbg")
           ,(expand-file-name "~/bin/ffmpeg-7.1.1-essentials_build/bin/")
           ,(expand-file-name "~/bin/ImageMagick-7.1.2-9-portable-Q16-x64/")
           ,(expand-file-name "~/bin/csharp-ls/tools/net9.0/any")
           "c:/GnuWin32/bin"
           "c:/GNAT/2021/bin"
           )))
    (setenv "PATH" (concat
                    (mapconcat 'identity xPaths ";")
                    winPaths
                    ))
    (setq exec-path (append xPaths (split-string winPaths ";") (list "." exec-directory)))))

(add-hook 'csharp-mode-hook
          (lambda ()
            (define-key csharp-mode-map
                        (kbd "C-M-H") #'nil)))

(add-to-list 'display-buffer-alist
             '("\\*vc-dir\\*"
               (display-buffer-same-window)))

(require 'eglot)

(setq kill-buffer-query-functions nil)

;; Test basic geometric shapes
;; (mapcar (lambda (x) (insert (format "%c " x))) 
;;         (number-sequence #x25A0 #x25FF 5))

;; ;; Test mathematical symbols  
;; (mapcar (lambda (x) (insert (format "%c " x))) 
;;         (number-sequence #x2200 #x2220))

;; (mapcar (lambda (x) (insert (format "%c " x))) 
;;         (number-sequence #x0080 #x25FF 1))

;; MIMESIS Visual Solution Build System for Emacs
;; Adapted for modular architecture with IGM, MSS, DM, VDS, IGC components
(setq eglot-server-programs
      '((csharp-mode . ("dotnet" "d:/source/emacs-30.1/bin/csharp-ls/tools/net9.0/any/CSharpLanguageServer.dll"))))

(define-key my-jump-keymap (kbd "w") (lambda () (interactive) (find-file "z:/SharedVM")))

(use-package corfu
  :load-path "z:/SharedVM/source/corfu-main"
  :custom
  (corfu-auto nil)
  (corfu-auto-delay 0.1)
  (corfu-auto-prefix 2)
  (corfu-cycle t)
  (corfu-separator ?\s)
  (corfu-quit-at-boundary nil)
  (corfu-quit-no-match nil)
  (corfu-preview-current nil)
  (corfu-preselect 'first)
  (corfu-on-exact-match nil)
  (corfu-scroll-margin 5))

(define-key my-jump-keymap (kbd "k") (lambda ()
                                       (interactive)
                                       (find-file (concat user-emacs-directory "README.org"))))

(use-package ztree
  :load-path "z:/SharedVM/source/ztree"
  :config
  (setq-default ztree-diff-filter-list
                '(
                  "build" "\.dll" "\.iso" "\.xmp" "\.cache" "\.gnupg" "\.local"
                  "\.mozilla" "\.thunderbird" "\.wine" "\.mp3" "\.mp4" "\.arpack"
                  "\.git" "^Volume$" "^Games$" "^cache$" "^chromium$" "^elpa$" "^nas$"
                  "^syncthing$" "bin" "obj"
                  ))
  ;; (setq-default ztree-diff-additional-options '("-w" "-i"))
  (setq-default ztree-diff-consider-file-size t)
  (setq-default ztree-diff-consider-file-permissions nil)
  (setq-default ztree-diff-show-equal-files nil)
  
  ;; Add key binding for 'g' to full rescan
  (with-eval-after-load 'ztree-diff
    (define-key ztree-mode-map (kbd "g") 'ztree-diff-full-rescan))
  
  ;; Helper function to get directories from dired windows
  (defun ztree-get-dired-directories ()
    "Get directories from all visible dired buffers."
    (let ((directories '()))
      (dolist (window (window-list))
        (with-current-buffer (window-buffer window)
          (when (eq major-mode 'dired-mode)
            (let ((dir (dired-current-directory)))
              (when dir
                (push (expand-file-name dir) directories))))))
      (reverse (delete-dups directories))))
  
  ;; Enhanced ztree-diff with directory DWIM
  (defun ztree-diff-dwim ()
    "Enhanced ztree-diff that suggests directories from dired windows."
    (interactive)
    (let* ((dired-dirs (ztree-get-dired-directories))
           (default-dir1 (or (car dired-dirs) default-directory))
           (default-dir2 (or (cadr dired-dirs) default-directory))
           (dir1 (read-directory-name 
                  (format "First directory (default: %s): " 
                          (file-name-nondirectory (directory-file-name default-dir1)))
                  default-dir1 default-dir1 t))
           (dir2 (read-directory-name 
                  (format "Second directory (default: %s): " 
                          (file-name-nondirectory (directory-file-name default-dir2)))
                  default-dir2 default-dir2 t)))
      (ztree-diff dir1 dir2)))
  
  ;; Optionally bind the enhanced function to a key
  (global-set-key (kbd "C-c z d") 'ztree-diff-dwim))

(with-eval-after-load 'ztree
  (define-key ztree-mode-map (kbd "n") #'ztree-next-line)
  (define-key ztree-mode-map (kbd "p") #'ztree-previous-line)

  ;; Preserve point in ztree buffers when switching tab history
  ;; Some window-configuration changes (eg. `tab-bar-history-back') can
  ;; redisplay buffers and reset their point. Save ztree buffer points
  ;; before the history change and restore them for visible windows after.
  (defun my/ztree-save-all-points ()
    "Save point and window-start for all `ztree-mode' buffers." 
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when (derived-mode-p 'ztree-mode)
          (set (make-local-variable 'my/ztree-saved-point) (point))
          (let ((win (get-buffer-window buf t)))
            (when win
              (set (make-local-variable 'my/ztree-saved-window-start) (window-start win))))))))

  (defun my/ztree-restore-visible-points ()
    "Restore saved point and window-start for visible `ztree-mode' buffers." 
    (dolist (win (window-list))
      (let ((buf (window-buffer win)))
        (with-current-buffer buf
          (when (and (derived-mode-p 'ztree-mode)
                     (boundp 'my/ztree-saved-point))
            (let ((p (min my/ztree-saved-point (point-max))))
              (with-selected-window win
                (goto-char p))
              (when (and (boundp 'my/ztree-saved-window-start)
                         (integerp my/ztree-saved-window-start))
                (set-window-start win (min my/ztree-saved-window-start (point-max))))))))))

  (defun my/ztree--around-tab-history (orig-fun &rest args)
    "Save/restore ztree points around tab history commands.
ORIG-FUN is the original command and ARGS are its arguments."
    (my/ztree-save-all-points)
    (prog1
        (apply orig-fun args)
      (my/ztree-restore-visible-points)))

  (advice-add 'tab-bar-history-back :around #'my/ztree--around-tab-history)
  (advice-add 'tab-bar-history-forward :around #'my/ztree--around-tab-history))

;; Remap ztree faces to sensible theme faces so ztree matches the current theme.
(defun my/ztree-remap-faces ()
  "Map ztree/ztreep faces to theme faces for coherence with current theme."
  (dolist (fn (face-list))
    (let ((name (symbol-name fn)))
      (when (or (string-prefix-p "ztree" name)
                (string-prefix-p "ztreep" name))
        (cond
         ((string-match-p "add\\|added\\|add-face" name)
          (set-face-attribute fn nil :foreground nil :background nil :inherit 'success))
         ((string-match-p "remove\\|del\\|delete\\|missing\\|removed" name)
          (set-face-attribute fn nil :foreground nil :background nil :inherit 'error))
         ((string-match-p "diff\\|model-diff\\|equal" name)
          (set-face-attribute fn nil :foreground nil :background nil :inherit 'font-lock-comment-face))
         ((string-match-p "model\\|name" name)
          (set-face-attribute fn nil :foreground nil :background nil :inherit 'font-lock-function-name-face))
         (t
          (set-face-attribute fn nil :foreground nil :background nil :inherit 'default)))))))

;; Run remapping after any theme is loaded, and now if a theme is already active.
(advice-add 'load-theme :after (lambda (&rest _) (my/ztree-remap-faces)))
(when custom-enabled-themes
  (my/ztree-remap-faces))

(use-package simply-annotate
  :load-path "z:/SharedVM/source/simply-annotate-main"
  :hook
  (find-file-hook . simply-annotate-mode)
  :custom
  (simply-annotate-author-list '("Rob Norris"
                                 "Pete Norton"
                                 "Andy Watson"
                                 "James Dyer"))
  (simply-annotate-prompt-for-author 'always)
  :bind
  ("C-c A" . simply-annotate-mode)
  ("C-c 0" . simply-annotate-show-all))

(setq tab-bar-auto-width-max '((120) 20))

(setq flymake-show-diagnostics-at-end-of-line nil)

(use-package protobuf-mode
  :load-path "z:/SharedVM/source/protobuf-mode-master")

(use-package tree
  :load-path "z:/SharedVM/source/tree")

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "C") 'dired-do-copy))

(load-file "z:/SharedVM/source/themes/timu-rouge-theme.el")
(load-file "z:/SharedVM/source/themes/timu-spacegrey-theme.el")
(load-file "z:/SharedVM/source/themes/timu-caribbean-theme.el")
(load-theme 'timu-rouge t)

(use-package doom-themes
  :load-path "z:/SharedVM/source/themes/doom")

(use-package highlight-indent-guides
  :load-path "z:/SharedVM/source/highlight-indent-guides-master"
  :mode "\\.cshtml?\\'"
  :hook (html-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'character)
  ;; (setq highlight-indent-guides-method 'fill)
  ;; highlight-indent-guides-character ?\|))
  ;; (setq highlight-indent-guides-auto-enabled nil)
  (setq highlight-indent-guides-auto-enabled nil)
  (set-face-background 'highlight-indent-guides-odd-face "#e8e8e8")
  (set-face-background 'highlight-indent-guides-even-face "#dedede")
  (set-face-foreground 'highlight-indent-guides-character-face "#4e535e"))

(defun insert-default-background-color ()
  "Insert the default background color at point."
  (interactive)
  (insert (downcase (face-attribute 'default :background))))

(global-set-key (kbd "C-q i") 'highlight-indent-guides-mode)
(global-set-key (kbd "M-s b") ' insert-default-background-color)

(use-package web-mode
  :load-path "z:/SharedVM/source/web-mode-master"
  :mode "\\.cshtml?\\'"
  :hook (html-mode . web-mode)
  :bind (:map web-mode-map ("M-;" . nil)))

(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

(setq eglot-ignored-server-capabilities
      '(
        ;; :hoverProvider                    ; Documentation on hover
        ;; :completionProvider               ; Code completion
        ;; :signatureHelpProvider            ; Function signature help
        ;; :definitionProvider               ; Go to definition
        ;; :typeDefinitionProvider           ; Go to type definition
        ;; :implementationProvider           ; Go to implementation
        ;; :declarationProvider              ; Go to declaration
        ;; :referencesProvider               ; Find references
        ;; :documentHighlightProvider        ; Highlight symbols automatically
        ;; :documentSymbolProvider           ; List symbols in buffer
        ;; :workspaceSymbolProvider          ; List symbols in workspace
        ;; :codeActionProvider               ; Execute code actions
        ;; :codeLensProvider                 ; Code lens
        ;; :documentFormattingProvider       ; Format buffer
        ;; :documentRangeFormattingProvider  ; Format portion of buffer
        ;; :documentOnTypeFormattingProvider ; On-type formatting
        ;; :renameProvider                   ; Rename symbol
        ;; :documentLinkProvider             ; Highlight links in document
        ;; :colorProvider                    ; Decorate color references
        ;; :foldingRangeProvider             ; Fold regions of buffer
        ;; :executeCommandProvider           ; Execute custom commands
        ;; :inlayHintProvider                ; Inlay hints
        ))

(use-package ibuffer
  :bind (:map ibuffer-mode-map ("M-o" . nil)))

(setq recentf-max-menu-items 40)
(setq recentf-max-saved-items 40)

(setq max-mini-window-height 6)

;; ============================================================

(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(g)" "ORDR(o)" "SENT(s)" "|" "DONE(n)" "CANCELLED(c)" "CLOSED(x)")))
(setq org-todo-keyword-faces
      '(("TODO" . "#ee6273")
        ("DOING" . "#6e8baa")
        ("ORDR" . "#c96eee")
        ("SENT" . "#c86bee")
        ("DONE" . "#77aa66")
        ("CANCELLED" . "#426b3e")
        ("CLOSED" . "#426b3e")
        ))

(setq completion-auto-select t)

(defvar-local my-fido-use-regex nil
  "Whether to use regex filtering in current minibuffer.")

(add-to-list 'auto-mode-alist '("\\.csproj\\'" . nxml-mode))

(use-package dape
  :load-path "z:/SharedVM/source/dape-master"
  :init
  ;; Set key prefix BEFORE loading dape
  (setq dape-key-prefix (kbd "C-c d"))
  :config
  ;; Define common configuration
  (defvar mimesis-netcoredbg-path "d:/source/emacs-30.1/bin/netcoredbg/netcoredbg.exe"
    "Path to netcoredbg executable.")
  (defvar mimesis-netcoredbg-log "d:/source/emacs-30.1/bin/netcoredbg/netcoredbg.log"
    "Path to netcoredbg log file.")
  (defvar mimesis-project-root "d:/source/MIMESIS-OVC"
    "Root directory of MIMESIS-OVC project.")
  (defvar mimesis-build-config "Debug"
    "Build configuration (Debug or Release).")
  (defvar mimesis-target-arch "x64"
    "Target architecture (x64, x86, or AnyCPU).")
  (defvar mimesis-vsdbg-path "C:/Users/vm.j.dyer/.vscode/extensions/ms-dotnettools.csharp-2.80.16-win32-x64/.debugger/x86_64/vsdbg.exe"
    "Path to vsdbg from VSCode installation.")

  ;; Helper function to create component configs
  (defun mimesis-dape-config (component-name dll-name &optional stop-at-entry)
    "Create a dape configuration for a component.
COMPONENT-NAME is the component directory name
DLL-NAME is the DLL filename without extension.
STOP-AT-ENTRY if non-nil, stops at program entry point."
    (let* ((component-dir (format "%s/%s" mimesis-project-root component-name))
           (bin-path (format "%s/bin/%s/%s/net9.0"
                             component-dir
                             mimesis-target-arch
                             mimesis-build-config))
           (dll-path (format "%s/%s.dll" bin-path dll-name))
           (config-name (intern (format "netcoredbg-launch-%s" 
                                        (downcase component-name)))))
      `(,config-name
        modes (csharp-mode csharp-ts-mode)
        command ,mimesis-netcoredbg-path
        command-args (,(format "--interpreter=vscode")
                      ,(format "--engineLogging=%s" mimesis-netcoredbg-log))
        normalize-path-separator 'windows
        :type "coreclr"
        :request "launch"
        :program ,dll-path
        :cwd ,component-dir
        :console "externalTerminal"
        :internalConsoleOptions "neverOpen"
        :suppressJITOptimizations t
        :requireExactSource nil
        :justMyCode t
        :stopAtEntry ,(if stop-at-entry t :json-false))))

  ;; Register all component configurations
  (dolist (config (list
                   (mimesis-dape-config "IGC" "MIMESIS.IGC" t)
                   (mimesis-dape-config "MSS" "MIMESIS.MSS" t)
                   (mimesis-dape-config "IGM" "MIMESIS.IGM" t)
                   (mimesis-dape-config "VDS" "VDS.MSS" t)
                   (mimesis-dape-config "DM" "DM.MSS" t)
                   (mimesis-dape-config "Demo" "Demo.MSS" t)
                   (mimesis-dape-config "Test_001" "Test" t)))
    (add-to-list 'dape-configs config))
  
  ;; Set buffer arrangement and other options
  (setq dape-buffer-window-arrangement 'gud)
  (setq dape-debug t)
  (setq dape-repl-echo-shell-output t))

(use-package dired-video-thumbnail
  :load-path "z:/SharedVM/source/dired-video-thumbnail-main"
  :bind (:map dired-mode-map
              ("C-t v" . dired-video-thumbnail))
  :custom
  (dired-video-thumbnail-size 250)
  (dired-video-thumbnail-display-height 180)
  (dired-video-thumbnail-columns 4)
  (dired-video-thumbnail-timestamp "00:00:02")
  (dired-video-thumbnail-video-player nil)
  (dired-video-thumbnail-mark-border-width 5)
  :custom-face
  (dired-video-thumbnail-mark ((t (:foreground "orange")))))

;; (setq dired-video-thumbnail-recursive t)

(use-package jira-to-org
  :load-path "z:/SharedVM/source/jira-to-org-main")

(use-package selected-window-accent-mode
  :load-path "z:/SharedVM/source/selected-window-accent-mode-main"
  :config (selected-window-accent-mode 1)
  :custom
  (selected-window-accent-fringe-thickness 10)
  (selected-window-accent-custom-color "#c1c1c1")
  (selected-window-accent-mode-style 'default))

(global-set-key (kbd "C-c w") selected-window-accent-map)

(use-package dired-image-thumbnail
  :load-path "z:/SharedVM/source/dired-image-thumbnail-main")

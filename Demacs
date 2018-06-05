(load-theme 'wombat t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq backup-directory-alist `(("." . "~/.saves")))

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(tool-bar-mode -1)
(setq display-time-default-load-average nil)
(setq display-time-use-mail-icon t)
(setq display-time-24hr-format t)
(display-time-mode t)
;; show matching bracket
(show-paren-mode 1)
(setq show-paren-delay 0)
;; (set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))
(ido-mode t)
(global-linum-mode t)
(setq TeX-PDF-mode t)
(set-scroll-bar-mode 'right)


;; android sdk 
(add-to-list 'load-path "~/.emacs.d/modules/")
;; (add-to-list 'load-path "~/.emacs.d/moduloales/android-mode")
(setq android-mode-sdk-dir "/opt/android-sdk-update-manager")
(require 'android-mode)

;; spotify

(global-set-key (kbd "C-c <C-right>") 'spotify-next)
(global-set-key (kbd "C-c <C-up>") 'spotify-playpause)

;; (set-frame-parameter (selected-frame) 'alpha '(85 85))
;; (add-to-list 'default-frame-alist '(alpha 85 85))


;; mmm-mode for php/html
(require 'mmm-mode)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
(mmm-add-classes
 '((html-php
    :submode php-mode
    :front "<\\?\\(php\\)?"
    :back "\\?>")))
(autoload 'php-mode "php-mode" "PHP editing mode" t)
(add-to-list 'auto-mode-alist '("\\.php?\\'" . html-mode))

;; YAS 
(require 'yasnippet)
;; (yas/initialize)
;; (yas/load-directory  "~/.emacs.d/yasnippet-snippets")

;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(require 'auto-complete)
(global-auto-complete-mode t)
(defun bind-compile-key ()
  (local-set-key "\C-c\C-c" 'compile)
  (local-set-key "\C-c\C-g" 'magit-status))
(add-hook 'c++-mode-hook 'bind-compile-key)


;; Octave

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
	  (lambda ()
	    (abbrev-mode 1)
	    (auto-fill-mode 1)
	    (if (eq window-system 'x)
		(font-lock-mode 1))))

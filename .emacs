(load-theme 'wombat t)
(defalias 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode -1)
(setq display-time-default-load-average nil)
(setq display-time-use-mail-icon t)
(setq display-time-24hr-format t)
(display-time-mode t)
;; show matching bracket
(show-paren-mode 1)
(setq show-paren-delay 0)
(set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))
(ido-mode t)
(global-linum-mode t)
(setq TeX-PDF-mode t)
(set-scroll-bar-mode 'right)
(yas/initialize)
(yas/load-directory "/usr/share/emacs/etc/yasnippet/snippets")


(add-to-list 'load-path "~/.emacs.d/modules/android-mode")
(setq android-mode-sdk-dir "/opt/android-sdk-update-manager")
(require 'android-mode)

 (set-frame-parameter (selected-frame) 'alpha '(85 85))
 (add-to-list 'default-frame-alist '(alpha 85 85))

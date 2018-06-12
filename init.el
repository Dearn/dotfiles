(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(show-paren-mode 1)
(setq show-paren-delay 0)
(load-theme 'wombat)
(tool-bar-mode -1)
(global-linum-mode 1)
(display-battery-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
;; alpha
;; (set-frame-parameter (selected-frame) 'alpha '(85 50))
;; (add-to-list 'default-frame-alist '(alpha 85 50))

(setq message-kill-buffer-on-exit t)

;; Web mode setup php html

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))


;; dired
(add-hook 'dired-after-readin-hook 'hl-line-mode)


(defun dired-open-file ()
  "In dired, open the file named on this line with xdg-open."
  (interactive)
  (let* ((file (dired-get-filename nil t)))
    (message "Opening %s..." file)
    (call-process "xdg-open" nil 0 nil file)
    (message "Opening %s done" file)))
;; Kopiowanie i zarzadzanie zainstalowanymi paczuszkami
 (with-temp-file "packages.txt" (insert (format "%S" package-activated-list)))



(defun require-package (package)
    "Install given PACKAGE. This is from Bling's config"
    (unless (package-installed-p package)
        (unless (assoc package package-archive-contents)
        (package-refresh-contents))
    (package-install package)))

 (setq pkgs '(auctex counsel csharp-mode csv csv-mode ctable elpy company find-file-in-project highlight-indentation lua-mode magit git-commit ghub let-alist magit-popup dash pyvenv s smex swiper ivy web-mode with-editor async yasnippet))
(require 'cl) ;; Common Lisp compatibility library
(loop for pkg in pkgs do
  (require-package pkg)) ;; install each package
(add-hook 'dired-mode-hook
	  (lambda () (local-set-key (kbd "C-x o") 'dired-open-file)))

;; (diredp-toggle-find-file-reuse-dir 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(csv-separators (quote (";" "	")))
)

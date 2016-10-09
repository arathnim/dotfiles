(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/rainbow-delimiters-master/")
;;(add-to-list 'load-path "~/.emacs.d/powerline/")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/")
(electric-pair-mode 1)
  
(global-linum-mode 1)
(menu-bar-mode -1)
(custom-set-variables
 '(package-archives
	(quote
		(("gnu" . "http://elpa.gnu.org/packages/")
		 ("melpa-stable" . "http://stable.melpa.org/packages/"))))
 '(linum-format (quote "%4d "))
 '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1))))))
(global-visual-line-mode t)

(load "~/.emacs.d/paredit.el")
(load "~/.emacs.d/hyperspec.el")

(require 'rainbow-delimiters)

(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-to-list 'auto-mode-alist '("\\.el\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.gr\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.emacs\\'" . lisp-mode))
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
    (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
    (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
    (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-mode-hook             #'enable-custom-lisp-mode)
    (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
    (add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(defvar *tab-width* 3)
          
(setq show-paren-delay 0)
(show-paren-mode 1)

(defun enable-custom-lisp-mode ()
	(setq indent-mode 'lisp)
	(enable-paredit-mode))

(setq-default indent-tabs-mode t)
(setq-default tab-width *tab-width*)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(delete-selection-mode 1)

(setq scroll-step 1)

(setq-default mode-line-format
	(list "%b"))
     
(require 'color-theme)
(load-theme 'modded-thought t)
(color-theme-initialize)
(load-theme 'modded-thought t)

(global-unset-key "\t")
(global-set-key "\t" (kbd "C-q TAB"))

(global-unset-key (kbd "RET"))
(global-set-key (kbd "RET") 'lisp-newline-and-indent)

(global-set-key (kbd "C-@") 'hippie-expand)

(global-unset-key (kbd "C-<left>"))
(global-unset-key (kbd "C-<right>"))

(global-unset-key (kbd "C-M-<right>"))
(global-unset-key (kbd "C-M-<left>"))

(global-set-key (kbd "C-<left>") 'paredit-backward)
(global-set-key (kbd "C-<right>") 'paredit-forward)
 
(global-set-key (kbd "C-M-<left>") 'previous-buffer)
(global-set-key (kbd "C-M-<right>") 'next-buffer)

(defun save-all-and-exit ()
	(interactive "*")
	(save-some-buffers t)
	(save-buffers-kill-terminal))

(setq hippie-expand-try-functions-list
		'(try-expand-dabbrev-visible
		  try-expand-dabbrev
		  try-expand-dabbrev-all-buffers
		  try-complete-file-name
		  try-complete-lisp-symbol-partially
		  try-complete-lisp-symbol))
   
(defun backward-kill-line (arg)
	  "Kill line backward."
  (interactive "p")
  (kill-line 0))

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
	 (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
(setq auto-save-default nil)
(setq make-backup-files nil)
(custom-set-faces)

(defvar indent-mode 'normal)

;; use this to do normal level-preserving indenting
(defun calc-indent ()
	(let ((ind 0)
			(orig (point)))
		(beginning-of-line)
		(while (or (eq 32 (char-after)) (eq 9 (char-after)))
			(if (eq 32 (char-after))
				(incf ind 1)
				(incf ind *tab-width*))
			(forward-char))
		(goto-char orig)
		ind))

(defun nested-parens? ()
  (interactive "*")
  (if (looking-back "\(.*")
		(let* ((orig (point))
				 (end-sexp
				  (progn 
					 (beginning-of-line)
					 (forward-list)
					 (point))))
		  (goto-char orig)
		  (< orig end-sexp))))

(defun calc-lisp-indent ()
  (interactive "*")
  (if (looking-back "\(.*")
		(let ((orig (point))
				(indent 0))
		  (backward-list)
		  (setq indent (calc-indent))
		  (goto-char orig)
		  indent)))

(defun lisp-indent ()
  (if (nested-parens?)
		(+ (calc-indent) *tab-width*)
	 (calc-lisp-indent)))

(defun lisp-newline-and-indent ()
  (interactive "*")
  (let ((orig (point))
		  (indent 
			(if (eq indent-mode 'normal) (calc-indent) (lisp-indent)))
		  erg pos)
	 (newline)
	 (if indent
		  (while (> indent 2)
			 (insert-char 9)
			 (setq indent (- indent *tab-width*))))))
	

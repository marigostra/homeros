
(setq user-mail-address "homeros.user@gmail.com")
(setq user-full-name "Homeros user")

(global-set-key [f2] 'save-buffer)
(global-set-key [f3] 'find-file)
(global-set-key [f4] 'kill-buffer)
(global-set-key [f5] 'other-window)
(global-set-key [f6] 'calendar)
(global-set-key [f7] 'gnus)
(global-set-key [f8] 'w3m-browse-url)
(global-set-key [f9] 'compile)
(global-set-key [f10] 'switch-to-buffer)
(global-set-key [S-f3] 'shell-command)
(global-set-key [S-f4] 'shell)

(global-set-key (kbd "M-а") 'forward-word)
(global-set-key (kbd "M-и") 'backward-word)
(global-set-key (kbd "C-ц") 'kill-region)
(global-set-key (kbd "M-ц") 'kill-ring-save)

(setq make-backup-files nil)

(setq inhibit-startup-screen t)
(setq line-move-visual nil)
(setq emacspeak-gnus-punctuation-mode 'all)
(setq emacspeak-message-punctuation-mode 'all)
(setq dtk-unicode-untouched-charsets '(ascii cyrillic-iso8859-5 latin-iso8859-1))
(setq kill-buffer-query-functions nil)

(require 'message)
(setq mm-coding-system-priorities '(koi8-r))
(add-to-list 'mm-body-charset-encoding-alist '(koi8-r . 8bit))
(setq message-cite-function 'message-cite-original-without-signature)
(setq smtpmail-default-smtp-server "localhost")
(setq send-mail-function 'smtpmail-send-it)
(require 'smtpmail)

(require 'w3m)
(setq mm-text-html-renderer 'w3m-standalone)
(remove-hook 'w3m-after-cursor-move-hook 'w3m-print-this-url)
(remove-hook 'w3m-after-cursor-move-hook 'w3m-show-form-hint)

(remove-hook 'w3m-after-cursor-move-hook 'w3m-highlight-current-anchor)
(remove-hook 'w3m-after-cursor-move-hook 'w3m-auto-show)

(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-search-engine-alist
      '(
        ("google" "http://www.google.ru/search?q=%s&hl=ru&ie=koi8-r" koi8-r)
        ))
(setq w3m-search-default-engine "google")
(setq w3m-use-cookies t)

(require 'dired-x)
(add-hook 'dired-mode-hook
	  (lambda ()
	    (setq dired-omit-files-p t)
	    (setq dired-omit-extensions '("~" ".o" ".a" ".la" ".toc" ".aux" ".log"))
	    (setq dired-omit-files "^\\.")
))

;;Homeros startup sound
(setq emacspeak-play-emacspeak-startup-icon nil)
(start-process "homerossnd" nil "ogg123" "-d" "alsa" "/opt/homeros.ogg")

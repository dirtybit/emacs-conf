;; add pylookup to your loadpath, ex) ~/.emacs.d/pylookup
(setq pylookup-dir "~/.emacs.d/pylookup")
(add-to-list 'load-path pylookup-dir)

;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; set search option if you want
;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'pylookup-update "pylookup" 
  "Run pylookup-update and create the database at `pylookup-db-file'." t)

(global-set-key "\C-ch" 'pylookup-lookup)
(setq browse-url-browser-function 'w3m-browse-url)
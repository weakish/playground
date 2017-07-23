#!/usr/bin/env hy

(def url "https://www.youtube.com/watch?v=XXX")


(def hostname "X.X.X.X")
(def username "root")
(def user-at-host (.format "{0}@{1}" username hostname))
(def password "XXXXXX")

(import pxssh)
(def s (pxssh.pxssh))
(def s.force_password true)
(.login s hostname username password)
(.sendline s "cd /var/www/html")
(.prompt s) ; Match prompt.
(.sendline s
  ; Need to use `sh` because default login shell may be bash/zsh/whatever.
  ; These shells may echo suggested completion, which may confuse .prompt.
  (.format "sh -c 'youtube-dl --get-filename {0}'" url))
; Match prompt again. Erase s.before before previous prompt matching.
(.prompt s)
(def output s.before)
(def output-file (.strip ; Pseudotty device returns CR/LF ('\r\n')
  (second ; First: echo back command (maybe in disorder); last: empty line.
    (.split output "\n"))))
(.logout s)


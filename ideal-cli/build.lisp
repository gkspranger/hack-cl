(load "packages.lisp")
(load "app.lisp")

(sb-ext:save-lisp-and-die "idealcli"
                          :toplevel 'app:main
                          :compression 9
                          :executable t)

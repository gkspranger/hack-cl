(load "packages.lisp")
(load "core.lisp")
(load "io.lisp")

(sb-ext:save-lisp-and-die "bin/idealcli"
                          :toplevel 'myapp:main
                          :compression 9
                          :executable t)

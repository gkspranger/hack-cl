(load "packages.lisp")
(load "src/core.lisp")
(load "src/io.lisp")

(sb-ext:save-lisp-and-die "bin/flh"
                          :toplevel 'flh/io:main
                          :compression 9
                          :executable t)

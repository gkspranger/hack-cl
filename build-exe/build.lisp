(load "packages.lisp")
(load "src/core.lisp")
(load "src/io.lisp")

(sb-ext:save-lisp-and-die "hello"
                          :toplevel 'hello:main
                          :executable t)

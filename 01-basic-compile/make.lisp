(in-package :cl-user)

(load "app.lisp")

(save-lisp-and-die
  "app"
  :toplevel
  #'run
  :executable t)

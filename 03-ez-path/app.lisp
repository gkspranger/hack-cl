(ql:quickload "alexandria")
; (delete-package :app)
(defpackage :app
  (:use :cl)
  (:export  :adder
            :add-one))
(in-package :app)

(defun adder (x y)
  "Add the two arguments."
  (+ x y))

(defvar add-one (alexandria:curry #'adder 1)
  "Add 1 to the argument.")

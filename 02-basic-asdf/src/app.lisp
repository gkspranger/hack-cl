(defpackage :app
  (:use :cl)
  (:export  :adder
            :runit))
(in-package :app)

(defun adder (x y)
  "Add the two arguments."
  (+ x y))

(defun runit ()
  (print (adder 1 2)))

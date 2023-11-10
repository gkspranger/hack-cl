(defpackage :flh/core
  (:use :cl))

(in-package :flh/core)

(defun greet (name)
  (format nil "hello ~a~%" name))

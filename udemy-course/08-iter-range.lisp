(defpackage :myrangeloop
  (:use :cl))

(in-package :myrangeloop)

(dotimes (i 3)
  (format t "~a~%" i))

(loop repeat 3
      do (format t "hello~%"))

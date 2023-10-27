(defpackage :mymoreloop
  (:use :cl))

(in-package :mymoreloop)


(defun is-called ()
  (format T "is called 456~%"))

(defun hello ()
  (is-called)
  (format T "hello world 789"))

(loop :for x in '(1 2 3 4)
        :if (> x 2)
      :do (setf x (format nil "greater than ~a~%" x))
      do (format t "yay ~a~%" x))


(loop :for x in '(1 2 3 4)
      with msg := ""
        if (> x 2)
      do (setf msg (format nil "~a aaameets IF ~%" x))
      do (format t "~a~%" msg))

; dont have to use : in front of loop symbols
; mixed bag on what or normal, i guess go without : just for less keystrokes
(loop :for i upto 1000
        :if (> i 5)
      :do (return some)
      collect i into some)

(#|
  
 (hello)

|#)

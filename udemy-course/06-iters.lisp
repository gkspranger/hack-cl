(defpackage :myloops
  (:use :cl))

(in-package :myloops)

; side effects
(loop for x in '(1 2 3)
      do (format t "for in do :: ~a~%" x))

; like map
(loop for x in '(1 2 3)
      collect (progn
               (format t "for in collect :: ~a~%" x)
               (+ 1 x)))

; like reduce - count
(loop for x in '(1 2 3)
        count x)

; like reduce - max
(loop for x in '(4 5 6)
        maximize x)

; like reduce - sum
(loop for x in '(4 5 6)
        sum x)

; for side effects, always returns nil
; clojure = doseq, dorun!
(dolist (x '(4 5 6))
  (format t "dolist :: ~a~%" x))

; but you can return things, just know it will be modifying outside of scope
(let ((y 0))
  (dolist (x '(1 2 3) y)
    (setf y (+ x y))))

; when loop a vector, have to go across it
(loop for x across #(1 2 3)
      do (format t "for across do:: ~a~%" x))

; can also coerce
; is efficient from vector to list
(coerce #(0 1 2) 'list)

(#|
  
 (ql:quickload "for")

|#)

(for:for ((x over #(1 2 3))
          (y over '(4 5 6)))
  (format t "v~a  l~a~%" x y))

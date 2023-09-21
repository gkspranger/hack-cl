(defparameter *name* "default name"
              "i didn't know you could add docstring for a param")

; you cannot initialize this
; but it is like defonce in clojure
; will persist across recompiles
(defvar *some-var*)

(defun set-some-var (val)
  (setf *some-var* val))

; i didn't know you could setf on many things
(let (a
      b)
  (setf
    a 1
    b 2)
  (format t
      "a = ~a~%~
      b = ~a~%"
    a b))

; bindings are in parallel
(let ((a 10)
      (b 20))
  (format t
      "a = ~a~%~
      b = ~a~%"
    a b))

; sequential bindings
(let* ((a 10)
       (b 20)
       (c (+ a b)))
  (format t
      "c = ~a~%"
    c))

; dynamic rebind, but it kept local
; becareful of this, as it is not pure anymore
; a function chain could really mess you up
(let ((*name* "greggy"))
  (format t "dyno name: ~a~%" *name*))

; global default val
(format t "def name: ~a~%" *name*)

; can use these globals as a default and modify within
(defun print-name (&key (name *name*))
  (format t "hello ~a~%" name))

(print-name)

(print-name :name "greggy")

(#|
 
 (boundp *name*)
 (boundp *some-var*)

 (set-some-var "frank")

 (setf *name* "greggy123")

 (format t "hello ~a" *name*)
 (format t "hello ~a" *some-var*)
  
 
|#)

(defmacro whenmm (condition &rest body)
  `(if ,condition (progn ,@body)))


(defmacro print-alot (times)
  `(dotimes (x ,times)
    (format t "~d~%" x)))

(print-alot 10)

(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))

(defmacro do-primes ((var start end) &body body)
  "this is a macro"
  `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
         ((> ,var ,end))
       ,@body))

(do-primes (a 0 19) (format t "~d~%" a))

(defmacro spliceit (somelist)
  `(,@somelist))

(defmacro do-primes2 ((var start end) &body body)
  (let ((ending-value-name (gensym)))
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var)))
          (,ending-value-name ,end))
         ((> ,var ,ending-value-name))
       ,@body)))

(do-primes2 (a 0 19) (format t "~d~%" a))


; CL-USER> 
; (spliceit `(print "hello"))
; (spliceit `(print "hello"))

; (PRINT "hello")

; CL-USER> 
; (eval (spliceit `(print "hello")))
; (eval (spliceit `(print "hello")))


; "hello" 

; "hello"

(#|
  
  (print "hello")

|#)

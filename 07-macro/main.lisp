(defmacro myone (a)
`(list 1 ,a 3)
)

(and (= 1 1) (not (= 1 2)))

(defun doit ()

(let ((x 0))
(dolist (i '(1 2 3 4 5))
  (setf x (+ x i))
  (format t "~d~%" x)
)

))


(dotimes (x 10) (format t "~d~%" x))

(do ((n 0 (1+ n))
     (cur 0 next)
     (next 1 (+ cur next)))
    ((= 10 n) cur))


(do ((i 0 (1+ i)))
     ((>= i 4) ; end test
      i) ; return result
   (print i)) ; do for every iteration


(let ((x 0)
      (top 10)
      (agg '()))
  (loop
    (setf x (1+ x))
    (push x agg)
    (when (>= x top)
      (return (nreverse agg)))))

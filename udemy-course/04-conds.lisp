(defvar p)

(defvar n)

(if p
    (progn
     (format t "i am IF predicate true~%")
     (format t "i am IF also predicate true~%"))
    (format t "i am IF predicate false~%"))

; don't need progn inside of when
; implicit
(when p
      (format t "i am WHEN predicate true~%")
      (format t "i am WHEN also predicate true~%"))

(unless p
  (format t "i am UNLESS predicate false~%")
  (format t "i am UNLESS also predicate false~%"))

(format t (cond
           ((< n 20) "you are young~%")
           ((and (>= n 20) (< n 50)) "you are normal~%")
           (t "you are old~%")))

(format t (case n
            (10 "you are 10~%")
            (30 "you are 30~%")
            (otherwise "~%")))

(format t (or "OR is true~%" nil))

(format t (or nil "OR is also true~%"))

(format t (unless (or nil nil) "NONE of OR is true~%"))

(format t (string (assert (= 1 1))))

; (format t (string (assert (= 1 2))))

(#|

 (setf p t)
 (setf p nil)

 (setf n 10)
 (setf n 30)
 (setf n 60)

 |#)

(defpackage :myhashloop
  (:use :cl))

(in-package :myhashloop)

(let ((ht (make-hash-table)))
  (setf (gethash :a ht) 1)
  (setf (gethash :b ht) 2)
  (format t "ht: ~a~%" ht)

  (loop :for k :being :the :hash-key :of ht
        do (format t "key: ~a~%" k))

  (loop :for v :being :the :hash-value :of ht
        do (format t "value: ~a~%" v))

  (loop :for k :being :the :hash-key
        :using (:hash-value v)
        :of ht
        do (format t "key=value : ~a=~a~%" k v))

  (maphash (lambda (k v)
             (format t "maphash key=value :: ~a=~a~%" k v)) ht)

  (format t "~a~%" (alexandria:hash-table-values ht)))

(load (merge-pathnames "app.lisp" *load-truename*))

(ql:quickload "fiveam")
(defpackage :test
  (:use :cl))
(in-package :test)

(fiveam:test sum-1
  (fiveam:is (= 3 (+ 1 2))))

(fiveam:test adder-1
  (fiveam:is (= 3 (funcall app:add-one 2))))

(fiveam:run!)

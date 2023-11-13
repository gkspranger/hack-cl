(defpackage :mycli/test
  (:use :cl :fiveam))

(in-package :mycli/test)

(def-suite all)
(in-suite all)

(test :some-test
  (is (= 3 3)))

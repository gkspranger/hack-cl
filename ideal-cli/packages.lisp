(ql:quickload :clingon)

(defpackage :myapp
  (:use :cl)
  (:export :main)
  (:import-from :clingon))

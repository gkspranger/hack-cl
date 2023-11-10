(defpackage :app
  (:use :cl)
  (:export :main)
  (:import-from :clingon))

(in-package :app)

(defun io/top-level/handler (cmd)
  (clingon:print-usage-and-exit cmd t))

(defun io/top-level/command ()
  (clingon:make-command :name "idealcli"
    :version "0.1.0"
    :description "some ideal CLI app"
    :handler #'io/top-level/handler
    :options nil
    :sub-commands (io/top-level/sub-commands)))

(defun io/top-level/sub-commands ()
  (list
   (io/echo/command)))

(defun core/echo/handler (cmd)
  (format t "~a~%" cmd)
  (format t "TODO: issue some echo command"))

(defun io/echo/command ()
  (clingon:make-command
    :name "echo"
    :description "will echo something out"
    :handler #'core/echo/handler))

(defun main ()
  (let ((app (io/top-level/command)))
    (clingon:run app)))

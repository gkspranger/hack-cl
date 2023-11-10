(defpackage :flh/io
  (:use :cl)
  (:export :main)
  (:import-from :clingon))

(in-package :flh/io)

(defun top-level/handler (cmd)
  (clingon:print-usage-and-exit cmd t))

(defun top-level/command ()
  (clingon:make-command :name "flh"
    :version "0.1.0"
    :description "The Concourse fly CLI helper for the dev-security team"
    :handler #'top-level/handler
    :options nil
    :sub-commands (top-level/sub-commands)))

(defun top-level/sub-commands ()
  (list
   (login/command)))

(defun login/handler (cmd)
  (format t "TODO: issue login command"))

(defun login/command ()
  (clingon:make-command
    :name "login"
    :description "logs you into concourse/build-nonprod/dev-security"
    :handler #'login/handler))

(defun push/handler (cmd)
  (format t "TODO: issue set-pipeline command"))

(defun push/command ()
  (clingon:make-command
    :name "push"
    :description "pushes logs you into build-nonprod/dev-security"
    :handler #'fly/handler))

(defun main ()
  (let ((app (top-level/command)))
    (clingon:run app)))

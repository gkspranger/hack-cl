(defpackage :myfunctions
  (:use :cl))

(in-package :myfunctions)

(defun hello ()
  "this is the doc string"
  "i am returning this because it is last")

(defun hello1 (name)
  "this is still the doc string"
  (format nil "hello ~a~%" name))

; usually only 1 opt param because of ordering
; will use keyword params instead if more than 1
(defun hello2 (name &optional mood)
  "still doc string"
  (if mood
      (format nil "hi ~a, i see you are ~a today~%" name mood)
      (format nil "hi ~a!~%" name)))

; simple named param, can add many
(defun hello3 (name &key mood)
  "still a doc string"
  (format nil "hi ~a, are you ~a today?~%" name (or mood "blah")))

; named param with default value
(defun hello4 (name &key (mood "blah"))
  (format nil "hi ~a, are you ~a today?~%" name mood))

; named param with default value and predicate saying if param was supplied
(defun hello5 (name &key (mood "blah" mood-p))
  (format t "mood param was supplied? ~a~%" mood-p)
  (format nil "hi ~a, are you ~a today?~%" name mood))

; varargs put into list
(defun hello6 (&rest names)
  "don't forget your docstrings"
  (loop for name in names
        collect (format nil "i see you ~a" name)))

(hello1 "greg")

(hello2 "greg")

(hello2 "greg" "happy")

(hello3 "greg")

(hello3 "greggy" :mood "angry")

(hello4 "greg")

(hello4 "greggy" :mood "yippy")

; mood-p will be nil
(hello5 "greg")

; mood-p will be t
(hello5 "greggy" :mood nil)

(hello6 "greg" "chris" "ragha")

(hello6)

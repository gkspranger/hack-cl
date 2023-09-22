(in-package :hello)

(defun greet (whom)
  "Create a greeting message for WHOM."
  (format nil "Hello, ~A." whom))

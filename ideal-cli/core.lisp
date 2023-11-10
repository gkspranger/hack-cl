(in-package :myapp)

(defun core/some-echo (name)
  (let ((myname (or name "<your-name>")))
    (format nil "hello ~a~%" myname)))

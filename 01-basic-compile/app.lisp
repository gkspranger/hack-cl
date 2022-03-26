(ql:quickload "alexandria")

(defun adder (x y)
  "Add the two arguments."
  (+ x y))

(defvar add-one (alexandria:curry #'adder 1)
  "Add 1 to the argument.")

(defun run ()
  (print (funcall add-one 10)))

(require :asdf)

(defun awesome-output (name)
  "will take a name and print it out in a pretty way"
  (let ((num (+ 1 (random 100))))
    (format t "hello ~a! your random numver is ~a.~a~
      i would consider this a ~a number.~a"
      name
      num
      #\newline
      (if (> num 50)
          "high"
          "low")
      #\newline)))

(awesome-output (uiop:getenv "USER"))

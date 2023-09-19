(defun awesome-output (name)
  "will take a name and print it out in a pretty way"
  (let ((num (random 100)))
    (format t "hello ~a! your random numver is ~a.
      i would consider this a ~a number."
      name
      num
      (if (> num 50)
          "high"
          "low"))))

(awesome-output (uiop:getenv "USER"))

(require :asdf)

(defun say-hello ()
  "this is my great function"
  (format t "hello world asdasasdasd ~a" (uiop:getenv "USER")))

(say-hello)

(uiop:quit)

(#|

 shift-option-l << load file
 sift-option-enter << eval block
 (say-hello)
 (say-hello123) 
 (call-hello)
 
|#)

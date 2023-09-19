(defvar *db* '())

(defun make-food
    (name fruit)
  (list :name name :fruit fruit))

(defun add-food
    (food)
  (push food *db*))

(defun dump-db
    ()
  (dolist (food *db*)
    (format t "~{~a:~10t~a~%~}~%" food)))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-food ()
  (make-food
   (prompt-read "Name")
   (y-or-n-p "Fruit? [y/n]: ")))

(defun add-foods ()
  (loop (add-food (prompt-for-food))
        (if (not (y-or-n-p "Another? [y/n]: ")) (return))))

(defun save-db (filename)
  (with-open-file (out filename
                       :direction :output
                       :if-exists :supersede)
    (with-standard-io-syntax
      (print *db* out))))

(defun load-db (filename)
  (with-open-file (in filename)
    (with-standard-io-syntax
      (setf *db* (read in)))))

(defun select (selector-fn)
  (remove-if-not selector-fn *db*))

(defun select-name (name)
  #'(lambda (food)
      (equal (getf food :name) name)))

(defun select-fruits ()
  #'(lambda (food)
      (equal (getf food :fruit) t)))

(defun select-non-fruits ()
  #'(lambda (food)
      (equal (getf food :fruit) nil)))

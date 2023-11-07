(defvar *acceptor*)

(defvar *routes*)

(defvar *yoyoma*)

(defun setup ()
  (ql:quickload '("hunchentoot"))
  (setf *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 4242))
  (setf hunchentoot:*dispatch-table*
    (list
     (hunchentoot:create-prefix-dispatcher "/newhello" #'new-hello)
     (hunchentoot:create-prefix-dispatcher "/hello" #'hello)
     (hunchentoot:create-prefix-dispatcher "/frank" #'frankeee-wrapper))))

(defun start-web ()
  (hunchentoot:start *acceptor*))

(defun hello ()
  (format nil "Hello, it works!"))

(defun new-hello ()
  (format nil "new Hello, it works new!"))

(defun frankeee-wrapper ()
  (frankeee))

(defun frankeee ()
  (format nil "live reload me while running"))

(defun fiddle ()
  (setup)
  (start-web)
  (load-routes))

(defvar *myarr* (make-array '(10)))

(setf (aref *myarr* 2) 10)

(format t "~d" (aref *myarr* 2))

(defvar *myhash* (make-hash-table))
(setf (gethash 'name *myhash*) "greg")

(format t "~a" (gethash 'name *myhash*))

(defvar *counter* 0)
(incf *counter*)
(incf *counter*)
(incf *counter*)

(incf *counter* 10)

(defvar *a* 10)
(defvar *b* 20)

(rotatef *a* *b*)

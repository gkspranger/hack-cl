(in-package :myapp)

(defun root/handler (cmd)
  (clingon:print-usage-and-exit cmd t))

(defun root/command ()
  (clingon:make-command :name "idealcli"
    :version "0.1.0"
    :description "some ideal CLI application"
    :handler #'root/handler
    :options nil
    :sub-commands (root/sub-commands)))

(defun root/sub-commands ()
  (list
   (echo/command)))

(defun echo/handler (cmd)
  (format t (core/some-echo (clingon:getopt cmd :name))))

(defun echo/options ()
  (list
   (clingon:make-option
    :string
    :description "name of person to greet"
    :short-name #\n
    :long-name "name"
    :initial-value "stranger"
    :key :name)))

(defun echo/command ()
  (clingon:make-command
    :name "echo"
    :description "will echo something out"
    :options (echo/options)
    :handler #'echo/handler))

(defun main ()
  (let ((app (root/command)))
    (clingon:run app)))

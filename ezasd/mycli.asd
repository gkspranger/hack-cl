(asdf:defsystem "mycli"
  :depends-on ("alexandria" "clingon")
  :components ((:file "core")
               (:file "io"))
  :in-order-to ((asdf:test-op (asdf:test-op "mycli/test"))))

(asdf:defsystem "mycli/test"
  :depends-on ("fiveam" "mycli")
  :components ((:file "test"))
  :perform (asdf:test-op (o c) (symbol-call :fiveam '#:run! :mycli)))

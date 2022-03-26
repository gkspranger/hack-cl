(in-package :asdf-user)

(defsystem "app"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "app")))))

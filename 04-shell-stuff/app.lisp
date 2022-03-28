(ql:quickload "cmd")

(defun run ()
(cmd:cmd "cf api https://api.sys.sandbox.pcf.example.net")
(cmd:cmd "cf login --sso")
)

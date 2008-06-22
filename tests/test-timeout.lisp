(in-package #:trivial-shell-test)

(deftestsuite test-with-timeout (trivial-shell-test)
  ())

(addtest (test-with-timeout)
  timeout-times-out
  (ensure-condition timeout-error
    (with-timeout (2.0)
      (sleep 1.0))))
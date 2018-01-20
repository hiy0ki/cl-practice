(defun say-hello ()
  (print "Pleese type your name:")
  (let ((name (read)))
    (print "Nice to meet you, ")
    (print name)))

;; mapcan sample
(defun ingredients (order)
  (mapcan (lambda (burger)
            (case burger
              (single (list 'patty))
              (double (list 'patty 'patty))
              (double-cheeze (list 'patty 'patty 'cheeze))))
          order))


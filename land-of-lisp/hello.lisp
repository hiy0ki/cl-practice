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

;; array sample
(defparameter x (make-array 3))

;; generic setter
(setf (aref x 1) 'foo)

;; hash table sample
(defparameter y (make-hash-table))
(setf (gethash 'yup y) '25)

;; 複数の値を返すことができる
(round 2.4)

(defun hukusu()
  (values 3 7))


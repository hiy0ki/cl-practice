(defun mappend (fn the-list)
  (apply #'append (mapcar fn the-list)))


(defun self-and-double (x)
  (list x (+ x x)))

(defun num-and-nega (x)
  (if (numberp x)
      (list x (- x))
      nil))

(defun num-and-negas (input)
  (mappend #'num-and-nega input))

;; p.28 1.2
(defun power (x y)
  (let ((res 0))
    (labels (f 

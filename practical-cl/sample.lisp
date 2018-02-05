
;; capture 7 macro
(not (= 1 2))

(dolist (x '(1 2 3)) (print x))

(dotimes (x 4) (print x))

(do ((nums nil) (i 1 (1+ i)))
    ((> i 10) (nreverse nums))
  (push i nums))

(loop for i from 1 to 10 collecting i)

;; captere 8 defmacro

(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))


;; numbers
(/= 1 2) ; t
(/= 1 1) ; nil

(max 3 5) ; 5
(min 3 5) ; 3
(min (3) 5) ; error
(min 3 t) ; error


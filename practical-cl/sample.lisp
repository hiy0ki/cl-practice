
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

;; vector
;; 変更はできない
(vector) ; #()
(vector 1) ; #(1)
(vector 1 2 3) ; #(1 2 3)

(make-array 5) ; #(0 0 0 0 0)
(make-array 5 :fill-pointer 0) ; #()

;; higher order function
(count-if #'evenp #(1 2 3 4 5))

(remove-if-not #'oddp #((1 a) (2 b) (3 c) (4 d) (5 e)) :key #'car)

(sort (vector "foo" "bar" "baz") #'string<)
(sort '(54 23 64 22) #'<)
(sort '(54 23 64 22) #'>)

;; sequence
(subseq "foobarbaz" 3) ; "barbaz"
(subseq "foobarbaz" 3 6) ; "bar"


;; list
(append '(1 2 3) '(4 5 6))


;; sort
;; 破壊的 / この本の中で破壊的操作をリサイクルな操作とも呼んでいる
(defparameter *lst* (list 4 3 2 1))

(sort *lst* #'<) ; (1 2 3 4)

*lst* ; (3 4) みたいにもとのlistは壊れる

;; file open and read
;; read はlispのコードとして読み込む
(defparameter *s* (open "./test.txt"))

(read *s*) ; (1 2 3)
(read *s*) ; 456
(read *s*) ; ((A B) (C D))
(read *s*) ; error なにもないため
(close *s*) ; T

;; file I/O
(defparameter *s* (open "./test.txt"))
(read *s*)
(close *s*)

;; 明示的に閉じなくても良いマクロ
;; file I/Oはこっちを使うのが基本
(with-open-file (stream "./test.txt")
  (read stream))

;; pathname
(defparameter *p* (pathname "/hog/uf/ss/ff.txt"))

(pathname-directory *p*) ; (:ABSOLUTE "hog" "uf" "ss")
(pathname-name *p*) ; "ff"
(pathname-type *p*) ; "txt"


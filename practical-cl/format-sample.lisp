;; defaultは下2桁
(format t "~$" pi)

;; 5桁にする
(format t "~5$" pi)

;; 前置パラメータを引数から生成する
(format t "~v$" 10 pi)

;; #でフォーマット引数の個数を表す
(format t "~#$" pi)

;; 整数の整形
(format t "~d" 1000000000)

(format t "~:d" 1000000000)

(format t "~@d" 1000000000)

(format t "~:@d" 1000000000)

;; ~a支持子
(format t "The value is: ~a" 10)

(format t "The value is: ~a" "foo")

(format t "The value is: ~a" '(1 2 3))

;; ~r
(format t "~r" 1234)

(format t "file~p" 1)
(format t "file~p" 10)
(format t "file~p" 0)

(format t "~r file~:p" 1)
(format t "~r file~:p" 10)
(format t "~r file~:p" 0)

(format t "~r famil~:@p" 1)
(format t "~r famil~:@p" 10)
(format t "~r famil~:@p" 0)

;; 大文字小文字
(format t "~(~a~)" "FOO")
(format t "~:@(~a~)" "foo")

;; 反復
(format t "~{~a, ~}" '(1 2 3)) ; 1, 2, 3,
(format t "~{~a~^, ~}" '(1 2 3)) ; 1, 2, 3








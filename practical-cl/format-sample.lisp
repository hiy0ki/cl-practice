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




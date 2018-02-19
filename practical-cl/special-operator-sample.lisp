;; 特殊オペレータは25個ある

;; quote

;; if

;; progn

;; let / let*

;; flet / labels
;; flet は本体でしか使えない
;; labels は定義される関数の中(labelsの外)でも使える
;; よってlabels は再帰関数が定義できるが、fletは定義できない

;; labels sample
;; 木を巡回してアトムをリストに収集し、それを（反転して）返す
(defun collect-leaves (tree)
  (let ((leaves ()))
    (labels ((walk (tree)
               (cond
                 ((null tree))
                 ((atom tree) (push tree leaves))
                 (t (walk (car tree))
                    (walk (cdr tree))))))
      (walk tree))
    (nreverse leaves)))



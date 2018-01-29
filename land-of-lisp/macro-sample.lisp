
(defmacro let1 (var val &body body)
  `(let ((,var ,val))
     ,@body))

;; macroexpand をmacroがどのように生成するか見れる

(defmacro split (val yes no)
  (let1 g (gensym)
        `(let1 ,g ,val
               (if ,g
                   (let ((head (car ,g))
                         (tail (cdr ,g)))
                     ,yes)
                   ,no))))

(defun pairs (lst)
  (labels ((f (lst acc)
             (split lst
                    (if tail
                        (f (cdr tail) (cons (cons head (car tail)) acc))
                        (reverse acc))
                    (reverse acc))))
    (f lst nil)))


(defmacro recurse (vars &body body)
  (let1 p (pairs vars)
        `(labels ((setf ,(mapcar #'car p)
                    ,@body))
           (self ,@(mapcar #'cdr p)))))


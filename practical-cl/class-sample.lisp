(defgeneric withdraw (account amount)
  (:documentation "ここにドキュメントを書く。基本的に必須にすると読みやすくなる"))

(defmethod withdraw ((account bank-account) amount)
  (when (< (balance account) amount)
    (error "Account overdrawn."))
  (decf (balance account) amount))

(defmethod withdraw ((account checking-account) amount)
  (let ((overdraft (- amount (balance account))))
    (when (plusp overdraft)
      (withdraw (overdraft-account account) overdraft)
      (incf (balance account) overdraft)))
  (call-next-method))

(defmethod withdraw ((proxy proxy-account) amount)
  (withdraw (proxied-account proxy) amount))


;; classを定義する
;; slotとはfieldのこと
;; 多重継承は可
(defclass bank-account ()
  (customer-name
  balance))

(defclass checking-account (bank-account)
  )

(defclass saving-account (bank-account)
  )

;; classの使い方
;; objectの作り方
(make-instance 'bank-account)

;; use example
;; set
(defparameter *account* (make-instance 'bank-account))
(setf (slot-value *account* 'customer-name) "John Doe")
(setf (slot-value *account* 'balance) 1000)

;; get
(slot-value *account* 'customer-name) ; John Doe
(slot-value *account* 'balance) ; 1000



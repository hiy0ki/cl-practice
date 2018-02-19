(define-condition malformed-log-entry-error (error)
  ((text :initarg :text :reader text)))

(defun parse-log-entry (text)
  (if (well-formed-log-entry-p text)
      (make-instance 'log-entry )
      (error 'malformed-log-entry-error :text text)))



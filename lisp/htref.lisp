(in-package :trivial-hash-table)


(defun htref (hash-table &rest keys)
  (dolist (key keys (values hash-table t))
    (multiple-value-bind (value present)
                         (gethash key hash-table)
      (unless present
        (return (values nil nil)))
      (setf hash-table value))))


(defmethod (setf htref) (new-value hash-table &rest keys)
  (prog ()
   rep
    (when (cdr keys)
      (multiple-value-bind (value present)
                           (gethash (car keys) hash-table)
        (setf hash-table (if present
                           value
                           (setf (gethash (car keys) hash-table) (make-hash-table)))
              keys (cdr keys))
        (go rep)))
    (setf (gethash (car keys) hash-table) new-value)))

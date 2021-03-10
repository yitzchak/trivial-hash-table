(in-package :trivial-hash-table)


(defmacro with-htrefs (vars values-form &body body)
  (let ((values-var (gensym)))
    `(let ((,values-var ,values-form))
       (symbol-macrolet ,(mapcar (lambda (var)
                                   `(,(car var) (htref ,values-var ,@(cdr var))))
                                 vars)
         ,@body))))

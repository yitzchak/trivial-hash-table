(asdf:defsystem #:trivial-hash-table
  :description "Some simple utilities for hash tables"
  :author "Tarn W. Burton"
  :license "MIT"
  :depends-on
    ()
  :components
    ((:module lisp
      :serial t
      :components
        ((:file "packages")
         (:file "htref")
         (:file "with-htrefs"))))
  . #+asdf3
      (:version "0.1"
       :homepage "https://yitzchak.github.io/trivial-hash-table/"
       :bug-tracker "https://github.com/yitzchak/trivial-hash-table/issues")
    #-asdf3 ())


#+asdf3.1
  (asdf:register-system-packages "trivial-hash-table"
                                 '(:trivial-hash-table))



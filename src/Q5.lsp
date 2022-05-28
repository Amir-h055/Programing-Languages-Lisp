; Question 5

(defun tribhelper (n a b c)
    (if (= n 0) '()
        (cons (+ a b c) (helper (- n 1) b c (+ a b c)))
    )
)
(defun tribonacci (n)
    (cond ((< n 1) '())
          ((= n 1) '(0))
          ((= n 2) '(0 0))
          (t (append '(0 0 1) (tribhelper (- n 3) 0 0 1)))
    )
)

; test
(print (tribonacci 7))

; Question 5

(defun tribhelper (n a b c)
    (if (= n 0) '()
        (cons (+ a b c) (tribhelper (- n 1) b c (+ a b c)))
    )
)
(defun tribonacci (n)
    (cond ((< n 1) '())
          ((= n 1) '0)
          ((= n 2) '(0 0))
          (t (append '(0 0 1) (tribhelper (- n 3) 0 0 1)))
    )
)

; test
(print (tribonacci 7)) ; should print (0 0 1 1 2 4 7)
(print (tribonacci 0)) ; should print NIL
(print (tribonacci 1))
(print (tribonacci 10))


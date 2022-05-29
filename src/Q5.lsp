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

;------------------------------------------------------------------

;gnu clisp  2.49.60
(defun reverse2 (lst)
(cond ((null lst) '())
(t (append (reverse2 (cdr lst)) (list (car lst))))))

(defun tribonacci-iter (n) 
    (if (= n 0) 
        nil
        (let* ( (a 0) (b 0) (c 1) )
              (let (lst) 
                   (dotimes (i n lst)
                       (setf lst (cons a lst) )
                       (setf new (+ a b c) )
                       (setf a b)
                       (setf b c)
                       (setf c new)
                    )
                (reverse2 lst)
               )
        )
    )
)
          

(print (tribonacci-iter 7))
(print (tribonacci-iter 0))
(print (tribonacci-iter 1))







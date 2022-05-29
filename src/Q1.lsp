(defun reverse2 (lst)
(cond ((null lst) '())
(t (append (reverse2 (cdr lst)) (list (car lst))))))


(defun sub-list ( lst n1 &optional (n2 (list-length lst)) )
    (if (> n2 (list-length lst)  ) 
        nil 
        (let (rslt)  
             (dotimes (i (- n1 1))
                 (setf lst (cdr lst) )
              )
             (dotimes (a (+ (- n2 n1) 1))
                 (setf rslt (cons (car lst) rslt))
                 (setf lst (cdr lst) ) 
              ) 
         ( reverse2 rslt )
         )
     )
)


(print (sub-list  '(1 2 3 4 5 6) 2 4) )
(print (sub-list  '(1 2 3 4 5 6) 1 4) )
(print (sub-list  '(1 2 3 4 5 6) 2 ) )
(print (sub-list  '(1 2 3 4 5 6) 1 20) )

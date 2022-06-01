;gnu clisp  2.49.60

(defun reverse2 (lst)
(cond ((null lst) '())
(t (append (reverse2 (cdr lst)) (list (car lst))))))


(defun sub-list ( lst n1 &optional (n2 (list-length lst)) )
    (if (> n2 n1  )
         (progn
            (if (> n2 (list-length lst)  ) (setf n2 (list-length lst) ) )
            (if (= n1 0) (car lst)
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
          (progn
            (if (> n1 (list-length lst)  ) (setf n1 (- (list-length lst) 1) ) )
          
                (let (rslt)  
                     (dotimes (i (- n2 1))
                         (setf lst (cdr lst) )
                      )
                     (dotimes (a (+ (- n1 n2) 1))
                         (setf rslt (cons (car lst) rslt))
                         (setf lst (cdr lst) ) 
                      ) 
                  rslt 
                 )
             
          )
    )
)


(print (sub-list  '(1 2 3 4 5 6) 2 4) )
(print (sub-list  '(1 2 3 4 5 6) 1 4) )
(print (sub-list  '(1 2 3 4 5 6) 2 ) )
(print (sub-list  '(1 2 3 4 5 6) 1 20) )
(print (sub-list  '(1 2 3 4 5 6) 4 2) )
(print (sub-list  '(1 4 10) 3 2) )
(print (sub-list  '(1 4 10) 3) )
(print (sub-list  '(1 7 12) 4 0))
(print (sub-list  '(1 6 12)) )

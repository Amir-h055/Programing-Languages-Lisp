; Question 4


(defun reverse2 (lst)
(cond ((null lst) '())
(t (append (reverse2 (cdr lst)) (list (car lst))))))

(defun flatten-helper (obj) 

	(do* ((result (list obj)) (node result)) ((null node) (delete nil result)) 
		(cond ((consp (car node)) (when (cdar node) (push (cdar node) (cdr node))) (setf (car node) (caar node))) 
		(t (setf node (cdr node)))
	      )
    )
)

(defun flatten (obj)
    
    (setf obj (flatten-helper obj ))
    (let* (list)
         (dotimes (i (list-length obj))
            
                 (if (numberp (car obj))
                     (progn 
                        
                       (setf list (cons (car obj) list))
                         
                         (setf obj (cdr obj))
                      )
                     (setf obj (cdr obj))
                  )
             
          )
          ( reverse2 list )
      
     )
                    
    
    
)

(print(flatten '(1 () () ((2) (3 4)) (5 6 7))))
(print(flatten '()))
(print(flatten '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))  ))

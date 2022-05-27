;gnu clisp  2.49.60
; Q6
#||
Write a lisp function that receives a single element and determines its depth. The
depth of an atom is defined as 0; the depth of a list with no inner list is considered 1; the
depth of a list with inner lists, would the maximum deptamong all its inner elements plus 1.
Examples:
> (depth NIL)
0
> (depth 1)
0
> (depth ’(1))
1
> (depth ’((2)))
2
> (depth ’((2)(3 (6))(4)))
3

||#


(defun my-depth (lst  pos)
    (if(and (listp  lst) (not ( null lst )) )
       (max (my-depth  (car lst) (+ 1 pos)) (my-depth (cdr lst) pos) )
       pos)
)
     
(defun depth (lst)
    (my-depth lst 0)  ; 0-based indexing 
) 
    
    
    
  
    
    
(print   (depth nil ) )
(print   (depth 1 ) )
(print   (depth '(1) ) )
(print   (depth '((2)) ) )
(print   (depth '((2)(3 (6))(4))) )

(print   (depth '(1 () (()) (((1))) ) ) )
    
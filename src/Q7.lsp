;gnu clisp  2.49.60
; Q7
#||
A Binary Search Tree (BST) is a tree in which all the nodes follow the below-mentioned
properties:
• The left sub-tree of a node has a key less than or equal to its parent node’s key.
• The right sub-tree of a node has a key greater than to its parent node’s key.
Write a lisp function to check whether a binary tree is a Binary Search Tree.
A list representing the structure of a sample binary tree is given in the following:
’(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))

||#

(defun isBinaryTree (lst)
   ( if(or (null lst) (and (null (caadr lst)) (null (caaddr lst))) ) t ;if null or leaf return t
       (cond 
           ((null (caadr lst)) (if (< (car lst) (caaddr lst)) (isBinaryTree (caddr lst)) nil) ) ;if left child is null check for right child
           ((null (caaddr lst)) (if (> (car lst) (caadr lst)) (isBinaryTree (cadr lst)) nil) ) ;if right child is null check for left child

           
           
           
            (t (if (  and (> (car lst) (caadr lst)) (< (car lst) (caaddr lst))  ) ; when we have both left and right child
                (progn
                  (isBinaryTree (caddr lst)) 
                  (isBinaryTree (cadr lst))
                 )
                nil
            )  )
        )
   )
)

   ; (print (caddr '(8 () (2) )) ) 
   ; (print( null (caadr '(8 () () )) ) )
(print    (isBinaryTree '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ()))) ))  ; original 

(print (isBinaryTree '(8 (2) () )) ) ;t
(print (isBinaryTree '(8 () (10) )) ) ;t
(print (isBinaryTree '(8 (10) () )) ) ;n left chinl is bigger
(print (isBinaryTree '(8 () (2) )) ) ;n  right chil is less
    

(print    (isBinaryTree nil ) ) ;t
(print   (isBinaryTree '(8 (3 ()()) (10 ()()) ) )) ;t
(print   (isBinaryTree '(8 (30 ()()) (10 ()()) ) )) ; n 30 is larger
(print   (isBinaryTree '(8 (3 ()()) (1 ()()) ) ))  ; n 1 is less
(print   (isBinaryTree '(8 (3 (1 () ()) (2 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ()))) )) ; n  2 is less than 3

(print   (isBinaryTree '(8 (10 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ()))))) ; ;n 10 is larger than 8


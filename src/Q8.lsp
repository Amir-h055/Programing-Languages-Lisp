;gnu clisp  2.49.60

; Q8
#||
Write a two lisp functions: in-order and pre-order that receive a tree (using the
same structure as in the previous question), and returns its in-order and pre-order traversal
of the given tree as list, respectively.
An example of the in-order traversal of the tree in the previous question is given in the
following:
> (in-order ’(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
(1 - 4 * 7 + 7 / 6)
> (pre-order ’(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
(+ - 1 * 4 7 / 7 6)

||#

(defun in-order (lst)
    (if (caadr lst) (in-order (cadr lst)))
    (write (car lst))
    (if (caaddr lst) (in-order (cadr (cdr lst))))
)

(defun pre-order (lst)
    (write (car lst))
    (if  (caadr lst) (pre-order (cadr lst)))
    (if (caaddr lst) (pre-order (cadr (cdr lst))))
)


(in-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
(format t "~C" #\linefeed)
(pre-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))


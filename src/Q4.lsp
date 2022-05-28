; Question 4

(defun flatten (obj) 

	(do* ((result (list obj)) (node result)) ((null node) (delete nil result)) 
		(cond ((consp (car node)) (when (cdar node) (push (cdar node) (cdr node))) (setf (car node) (caar node))) 
		(t (setf node (cdr node)))
	      )
    )
)

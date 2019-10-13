(defun addition (elements)
	
	(setq num 0)
	(setq len (list-length elements) )
	(loop for i from 0 to (- len 1) do
		
		(setq num (+ num (nth i elements) ) )
	)
	(return-from addition num)

)

(defun recursion (elements biggest)

        (if (= biggest 0) ; first case: if biggest is null (0)
                (setq biggest (nth 0 elements)) ; set biggest to the first element of the array
        )

        (setq length (list-length elements) )
        (setq total 0)

	(loop for i from 0 to (- length 1) do ; loops from first element of array to the last

		(setq num 0)
		(if (listp (nth i elements) )
			(progn
				(setq num (addition (nth i elements) ) )
				(setf (nth i elements) num)
			)
		)

		; if the next item in the array is not the last item:
                (if (/= i length )
			(progn
				(setq total (+ total (nth i elements) )  )
				(if (> total biggest)
					(progn
						(setq biggest total)
					)
                        	)
			)
                )
	)

	; if the current length of the array which we determine at the beginning of the function is equal to 1,
	; then we return biggest because we know that we are on the last element of the array (base case)
	; if the current length is not equal to 1, meaning we still have not gotten to the end of the array,
	; we call the recursive function with the same parameters except the array, which we use cdr. 
	( cond ( (= length 1) (return-from recursion biggest) )
               ( (/= length 1) (return-from recursion (recursion (cdr elements) biggest) )  )
        )


)

(write '(-2 4 (5 -6) 3 6 1) )
(terpri)
(write(recursion '(-2 4 (5 -6) 3 6 1) 0) )

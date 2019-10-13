(defun recursion (elements count)
	(cond ( (= (+ count 1) (list-length elements)) (nth count elements) ) ; if end of list
	      ( (/= (+ count 1) (list-length elements)) (+ (nth count elements) (recursion elements (+ count 1) ) ) ) 
		; else, add the current num with the next nums determined by recursion	 
	)
)

(write(recursion '(-2 4 -3 5 -3 1 -2 3) 0))

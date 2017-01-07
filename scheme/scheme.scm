(define (calculator exp)
  (cond ((null? exp) 0)                 ; zero terms
        ((null? (cdr exp)) (car exp))   ; one  term only (assumed number)
        (else                           ; assumed three or more terms
          (let ((operand1 (car  exp))
                (operator (cadr exp))
                (operands (cddr exp)))
            ((case operator             ; convert operator, a symbol, to its function
               ((+) +)
               ((-) -)
			  )
             operand1
             (calculator operands))
			)
		)
	)
) ; calculate the rest
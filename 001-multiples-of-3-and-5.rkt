#lang racket

; Predicate: Is n a multiple of 3 or 5?
(define (mul35? n)
  (if (or (= (modulo n 3) 0) (= (modulo n 5) 0)) #t #f))

; FizzBuzz like implementation. Recursive function that checks every number in
; [index_0, limit), and adds it to the sum if it's a multiple of three or five.
; Not very efficient since you must check numbers that are avoidable if you get
; clever.
(define (mul35sum index sum limit)
  (if (< index limit)
      (if (mul35? index)
          (mul35sum (+ index 1) (+ sum index) limit)
          (mul35sum (+ index 1) sum limit))
      sum))

(mul35sum 0 0 1000)

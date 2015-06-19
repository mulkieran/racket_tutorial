;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname fib-square) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define make-a-square
  (lambda (w)
    (overlay
     (square w "outline" "black")
     (square w "solid" "chartreuse"))))

(define spiral
  (lambda (s)
    (rotate
     90
     (crop
      0 0 (image-width s) (image-width s)
      (overlay/align
       "left"
       "top"
       (circle (image-width s) "outline" "red")
       s)))))

(define unit-square
  (spiral (make-a-square 5)))

(define make-square
  (lambda (s)
    (beside  
     (spiral (make-a-square (image-width s)))
     (rotate 90 s))))

(define fib-square
  (lambda (x)
    (if
     (= x 0)
     unit-square
     (make-square (fib-square (- x 1))))))
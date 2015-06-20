#lang racket

(require 2htdp/image)
(require 2htdp/universe)
(require 2htdp/planetcute)

(define rh1 (rhombus 80 150 "solid" "mediumpurple"))
(define rh2 (beside rh1 rh1))
(define rh3 (rhombus 80 150 "solid" "chartreuse"))
(define rh4 (rotate 90 (beside rh3 rh3)))
(define rh5 (overlay rh2 rh4))

(define crayon (make-pen "blue" 5 "solid" "round" "round"))
(define sq1 (square 100 "outline" crayon))
(define faces (overlay/xy sq1 50 -30 sq1))
(define conline (line 50 -30 crayon))
(define one-side (overlay/xy conline 0 0 faces))
(define two-side (overlay/xy conline -100 0 one-side))
(define three-side (overlay/xy conline -100 -100 two-side))
(define four-side (overlay/xy conline 0 -100 three-side))

(define curve (add-curve (rectangle 100 100 "solid" "black")
             -20 20 0 2
             120 80 0 2
             "red"))
(define last (overlay (rectangle 10 120 "solid" "blue") curve))


(define dirt (overlay/xy dirt-block 0 40 brown-block))
(define grass (overlay/xy grass-block 0 40 brown-block))
(define land (beside/align "bottom" dirt water-block grass))
(define scene (overlay/align "left" "top" enemy-bug land))

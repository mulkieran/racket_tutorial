#lang racket

(require 2htdp/image)
(require 2htdp/universe)

(define rh1 (rhombus 80 150 "solid" "mediumpurple"))
(define rh2 (beside rh1 rh1))
(define rh3 (rhombus 80 150 "solid" "chartreuse"))
(define rh4 (rotate 90 (beside rh3 rh3)))
(define rh5 (overlay rh2 rh4))

(define sq1 (square 100 "outline" "blue"))
(define faces (overlay/xy sq1 50 -30 sq1))
(define conline (line 50 -30 "blue"))
(define one-side (overlay/xy conline 0 0 faces))
(define two-side (overlay/xy conline -100 0 one-side))
(define three-side (overlay/xy conline -100 -100 two-side))
(define four-side (overlay/xy conline 0 -100 three-side))

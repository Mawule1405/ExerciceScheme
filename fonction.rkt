;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname fonction) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; ecrire une fonction qui calcul la somme des n premiers carrées.
(define SommeCarree (lambda (n) (cond
                                  ((= n 1)     1)
                                  (#t         (+ (* n n) (SommeCarree (- n 1))))
                                 )))


;ecrire une fonction qui calcul la puissance n ième d'un nombre x
(define Puissance (lambda (x n) (cond
                                  ((= x 0) 0)
                                  ((= n 1) x)
                                  (#t     (* x (Puissance x (- n 1))))
                                 )))
;ecriture d'une permettant de calculer la somme des n premiers termes consécutifs la suite puissance
(define SommeTermes (lambda (x n) (cond
                                    ((= x 0)    0)
                                    ((= n 1)    x)
                                    (#t        (+ (Puissance x n) (SommeTermes x (- n 1))))
                                   )))
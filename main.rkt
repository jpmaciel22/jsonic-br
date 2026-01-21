#lang br/quicklang
;;main -> reader -> expander , este é o caminho.

(module reader br
  (require "reader.rkt")
  (provide read-syntax))

;;The reader con­verts the source code of our lan­guage from a string of char­ac­ters into Racket-style paren­the­sized forms, also known as S-expres­sions.
;; By conven­tion, Racket expects the name of the main reader func­tion to be read-syntax. This read-syntax func­tion must return one value: code for a mod­ule expres­sion, pack­aged as a syn­tax object.
;; o reader tem lexer e parser.



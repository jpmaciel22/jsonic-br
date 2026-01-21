#lang br/quicklang

(require "tokenizer.rkt" "parser.rkt")

(define (read-syntax path port)
  (define parse-tree (parse path (make-tokenizer port))) ;; ent basicamente a variavel parse tree
  ;; segura o parsing dos lexers do codigo
  (define module-datum `(module jsonic-module jsonic-racket/expander
                          ,parse-tree))
  (datum->syntax #f module-datum))
(provide read-syntax)

;;
;;#lang br/quicklang
;;(require "tokenizer.rkt" "parser.rkt")

;;(define (read-syntax path port)
  ;;(datum->syntax #f `(module jsonic-mod jsonic-racket/expander
    ;;                   ,(parse path (make-tokenizer port)))))
;;(provide read-syntax)
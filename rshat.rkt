#lang racket
; Shack Chat

(require racket/tcp)

; Message - has a name and text 
(struct message [name text] #:transparent)

(define (findchar str ind)
  (if (char=? (string-ref str ind)  #\:)
      ind (findchar str (+ ind 1))))

(define (split-index str ind)
  (cons (substring str 0 ind) (string-trim (substring str (+ 1 ind)))))

(define (str->msg str)
  (local [(define splitmsg
            (split-index str (findchar str 0)))]
    (message (car splitmsg) (cdr splitmsg))))
     
(define (readmsg in)
  (str->msg (read-line in)))

(define URL "127.0.0.1") ; PUT URL HERE
(define PORT 44444) ; PUT PORT NUMBER HERE

(define (connect)
  (displayln "Please update URL and PORT before connecting.")
  (with-handlers ([exn:fail?
                   (lambda (e) 
                     (displayln "Connection failed. Make sure URL and PORT are correct.")
                     (exit))])
    (tcp-connect URL PORT)))

(define-values (in out) (connect))

(define (send-name name out-port)
  (displayln name out-port)
  (flush-output out-port))

(send-name "Name" out) ; ENTER NAME HERE 

(define (read-loop in-port)
  (local
    [(define msg
       (readmsg in-port))]
    (printf "<~a> ~a\n" (message-name msg) (message-text msg)))
  (read-loop in-port))

(thread (thunk
         (read-loop in)))                     

(define (msg-loop out-port)
  (displayln (read-line) out-port)
  (flush-output out-port)
  (msg-loop out-port))

(msg-loop out)


(close-output-port out)
(close-input-port in)
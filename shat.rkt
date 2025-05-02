#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{ShackChat Protocol (Plan9)}

@hyperlink["current.html"]{← Back to Current page}
 
@bold{Check out my custom protocol written in Racket (ShackChat)             
                                                                                
This was made with @hyperlink["https://cmckinley.org"]{Collin Mckinley}}

@verbatim{
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

(define URL "URL") ; Enter URL
(define PORT 44444) ; Enter Port
(define-values (in out) (tcp-connect URL PORT))

(define (send-name name out-port)
  (displayln name out-port)
  (flush-output out-port))

(send-name "Name" out)

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
}
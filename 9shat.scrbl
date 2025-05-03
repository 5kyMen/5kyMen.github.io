#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{ShackChat Protocol (Plan 9}

@hyperlink["current.html"]{← Back to Current page}
 
@bold{Check out my custom protocol written in the Plan 9 Dialect of C (ShackChat)             
that I made with @hyperlink["https://cmckinley.org"]{Collin Mckinley}}

You can find the client for download @hyperlink["9shat.c"]{here}
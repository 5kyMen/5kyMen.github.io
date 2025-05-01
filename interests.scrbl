#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{My Interests}

@hyperlink["index.html"]{← Back to main page}

My Interests include:
@itemlist[
  @item{Network Security}
   @; Salvaging 
  @item{Reverse Engineering}
  @item{IoT Exploitation}
  @item{Amateur Radio}
  @item{Learning Languages}
  @item{OSINT}
]
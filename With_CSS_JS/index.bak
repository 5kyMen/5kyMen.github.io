#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@; Define a style for our custom styling
@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{What I am Currently Learning}

@; Main content container with sidebar
@(define (main-container . body)
   (elem
    #:style (make-style "main-container" null)
    body))

@; Sidebar definition
@(define (sidebar)
   (elem
    #:style (make-style "sidebar" null)
    @hyperlink["index.html"]{Home}
    @hyperlink["projects.html"]{Projects}
    @hyperlink["dotfiles.html"]{Dotfiles}
    @hyperlink["slavov-lab.html"]{Slavov Lab}
    @hyperlink["interests.html"]{My Interests}))

@main-container{
  @sidebar{}
  
  @; Main content
  @elem[#:style (make-style "main-content" null)]{
    @section{What I am Currently Learning}
    @tabular[#:style 'boxed
             (list (list "Languages (Programming):" "Haskell, COBOL, F#, & Pearl")
                   (list "Languages (Spoken):" "Japanese, Mandarin, Hindi, Greek, & TokiPona")
                   (list "Theory & Concepts:"
                         "Lambda Calculus, Monads - Functional Programming, & Category Theory")
                   (list "Additional Topics:" " 
     General Class Radio License, CompTIA Security+, NIXOS, LFS custom embedded Linux systems"))]
  }
}
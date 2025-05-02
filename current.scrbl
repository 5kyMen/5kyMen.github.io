#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@hyperlink["index.html"]{← Back to main page}

@title[#:style website-style]{My Life Right Now:}

@section{Academic Interests:}
@itemlist[
  @item{Reverse Engineering}
  @item{Embedded Device and IoT exploitation}
  @item{Active Directory DS (Kerberoasting and DCSync)}
  @item{OSINT}
  @item{Kubernetes}
  @item{Packet Analysis}
]

@itemlist[
  @item{Programming: Python, Racket, Java, JavaScript, HTML, C, ASM, LaTeX, and Emacs-Lisp}
  @item{Operating Systems: Windows, Mac, Linux, Plan9, & TempleOS; Building/Deploying custom embedded Linux systems}
  @item{Security and Networking: Protocols, Firewalls, and encryption techniques in personal and client systems}
]

@section{Non-Academic Interests:}

@itemlist[
  @item{Radio Operation: FCC Technician Certification for Amateur Radio; Operating as volunteer for
  2025 Boston Marathon}
  @item{Language/Linguistics: Portuguese, English, Spanish, Japanese, & Greek; Learning: TokiPona,
  Mandarin & Hindi}
  @item{Beginner/Intermediate Portuguese teacher for 20+ students; Northeastern University's
  NUCALLS program}
  @item{Design and Art: @hyperlink["photo.html"]{Photography}, 3D Modeling, Animation, Architecture,
  ASCII Art, Vector Art, Motion Graphics, & Typography}]



@; Introduction
@section{What I am Currently learning}
@tabular[#:style 'none
         #:sep @hspace[5]
         (list (list "Programming:" "Haskell, COBOL, F#, & Pearl")
               (list "Languages:" "Japanese, Mandarin, Hindi, Greek, & TokiPona")
               (list "Theory & Concepts:"
                     "Lambda Calculus, Monads - Functional Programming, & Category Theory")
               (list "Additional Topics:" " 
 General Class Radio License, CompTIA Security+, Linux From Scratch"))]

@section{Shack Protocol Client}


Check out my @bold{ShackChack Protocol Chat Client} written in both:
@linebreak[]
@hyperlink["9shat.html"]{The Plan 9 Nonstandard C Dialect} 
@linebreak[]
@hyperlink["shat.html"]{The Racket (PLT Scheme) Programming Langauge}
@section{SLIP}

@; (Collapsable)

@; Slavov



@; LFS - Give plan and 
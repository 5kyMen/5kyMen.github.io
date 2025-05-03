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
  @item{Reverse Engineering (Malware and Video Games)} @; XP SOLITARE HERE 
  @item{Embedded Device and IoT exploitation}
  @item{Active Directory DS (Kerberoasting and DCSync)}
  @item{OSINT (Mostly in the area of Geolocation and Imagery Intelligence)}
]

@itemlist[
  @item{Programming: Python, Racket, Java, JavaScript, HTML, C, ASM, LaTeX, and Emacs-Lisp}
  @item{Operating Systems: Windows, Mac, Linux, Plan9, & TempleOS; Building/Deploying custom embedded Linux systems}
  @item{Security and Networking: Protocols, Firewalls, and encryption techniques in personal and client systems}
]

@section{Non-Academic Interests:}

@itemlist[
  @item{Radio Operation: Amateur Technician Certification and Radio volunteer for
  2025 Boston Marathon - Assigned to Medical Sweep 8}
  @item{Language/Linguistics: I speak Portuguese, English, and Spanish. I have also been
  getting pretty good at Japanese, & Greek}
  @item{I am also a teacher/ambassador for the @hyperlink["https://www.instagram.com/nucalls/"]{NUCALLS}
  club at Northeastern!}
  @item{I also enjoy design like:
  @hyperlink["photo.html"]{Photography},
  3D Modeling,
  @hyperlink["art/hand.jpg"]{WhiteBoard Art},
  Wood Burning, 
  @hyperlink["art/arch.jpg"]{ Architecture}
  @hyperlink["art/ascii.png"]{ASCII Art},
  Vector Art,
  & Typography}]

@; Resources and Tutorials -> Extensions Upload Using Marker

@; Introduction to Current

@section{What I am Currently learning}
@tabular[#:style 'none
         #:sep @hspace[5]
         (list (list "Programming:" "Haskell, COBOL, F#, & Pearl")
               (list "Languages:" "Japanese, Mandarin, Hindi, Greek, & TokiPona")
               (list "Concepts:"
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


@; Slavov



@; LFS - Give plan and 
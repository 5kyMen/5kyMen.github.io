#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{Ryan Raschkovsky}

@image["pic.png" #:scale 0.5]

@section{About Me:}

Hello! My name is @bold{Ryan Raschkovsky}, and welcome to my website!

I'm an undwergraduate at Northeastern University in Boston,
where I am currently studying for a BA in Cybersecurity.

My Current @hyperlink["interests.html"]{Interests}

I'm currently certified as an FCC Technician for Amateur Radio and am studying multiple languages
including Greek, Japanese, Mandarin, and TokiPona 
When I'm not working on Cybersecurity projects, you can find me
building drones, teaching Portuguese, or Distrobution Hopping!

@; @section{Projects}
@;@para{Coming soon!}

@section{Dotfiles}

@;@section{Slavov Lab}

@section{What I am Currently Learning}
@tabular[#:style 'none
         #:sep @hspace[5]
         (list (list "Languages (Programming):" "Haskell, COBOL, F#, & Pearl")
               (list "Languages (Spoken):" "Japanese, Mandarin, Hindi, Greek, & TokiPona")
               (list "Theory & Concepts:"
                     "Lambda Calculus, Monads - Functional Programming, & Category Theory")
               (list "Additional Topics:" " 
 General Class Radio License, CompTIA Security+, NIXOS, LFS  custom embedded Linux systems"))]
          

@section{Contact}

Feel free to reach out to me!

@tabular[#:style 'none
         (list 
          (list @image["email-icon.png" #:scale 0.12]{}
                @hyperlink["mailto:ryanraschkovsky@gmail.com"]{Email})
          (list @image["linkedin-icon.png" #:scale 0.12]{}
                @hyperlink["https://www.linkedin.com/in/ryan-rasch-664267273/"]{LinkedIn})
          (list @image["QRZ-icon.png" #:scale 0.12]{}
                @hyperlink["https://www.qrz.com/db/KC1WDR"]{QRZ Page})
          (list @image["pgp-icon.png" #:scale 0.12]{}
                @hyperlink["pgp.html"]{My PGP Public Key}))]

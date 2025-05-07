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

I'm an undergraduate at Northeastern University in Boston,
where I am currently studying for a BS in Cybersecurity.

I'm currently certified as an FCC Technician for Amateur Radio and am studying multiple languages
including Greek, Japanese, Mandarin, and toki pona!

Here's where you can check out what @hyperlink["current.html"]{I'm working on}

When I'm not working on Cybersecurity projects, you can find me
building drones, teaching Portuguese, or Distribution Hopping!


@; Also, take a look at @hyperlink["setup.html"]{my setup} if you're interested!

@; @section{Projects}

@;@para{Coming soon!}


@;@section{Slavov Lab}

@section{Contact}

Feel free to reach out to me!

@tabular[#:style 'none
         (list 
          (list @image["email-icon.png" #:scale 0.12]{}
                @hyperlink["mailto:raschkovsky.r@northeastern.edu"]{Email})
          (list @image["linkedin-icon.png" #:scale 0.12]{}
                @hyperlink["https://www.linkedin.com/in/ryan-rasch-664267273/"]{LinkedIn})
          (list @image["QRZ-icon.png" #:scale 0.12]{}
                @hyperlink["https://www.qrz.com/db/KC1WDR"]{QRZ Page})
          (list @image["pgp-icon.png" #:scale 0.12]{}
                @hyperlink["pgp.html"]{PGP Key}))]


@verbatim{This site was written in Scribble. Check it out @hyperlink["https://docs.racket-lang.org/scribble/getting-started.html"]{here}}
@hyperlink["http://www.catb.org/hacker-emblem/"]{@image["emb.png"  #:scale 1.1]{}}
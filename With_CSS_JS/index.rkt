#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@; Define a style for our custom styling
@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{Ryan Raschkovsky}

@; Define a page structure with sidebar and main content
@(define sidebar-style (make-style "sidebar" null))
@(define main-content-style (make-style "main-content" null))
@(define main-container-style (make-style "main-container" null))

@; Generate the sidebar
@para[#:style sidebar-style]{
  @hyperlink["index.html"]{Home}
  @linebreak[]
  @hyperlink["projects.html"]{Projects}
  @linebreak[]
  @hyperlink["dotfiles.html"]{Dotfiles}
  @linebreak[]
  @hyperlink["slavov-lab.html"]{Slavov Lab}
  @linebreak[]
  @hyperlink["learning.html"]{What I'm Learning}
  @linebreak[]
  @hyperlink["interests.html"]{My Interests}
  @linebreak[]
  @hyperlink["pgp.html"]{My PGP Public Key}
}

@; Main content
@para[#:style main-content-style]{
  @image["pic.png" #:scale 0.5]

  @section{About Me:}

  Hello! My name is @bold{Ryan Raschkovsky}, and welcome to my website!

  I'm an undergraduate at Northeastern University in Boston,
  where I am currently studying for a BA in Cybersecurity.

  I'm currently certified as an FCC Technician for Amateur Radio and am studying multiple languages
  including Greek, Japanese, Mandarin, and TokiPona.
  When I'm not working on Cybersecurity projects, you can find me
  building drones, teaching Portuguese, or Distribution Hopping!

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
}
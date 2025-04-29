#lang scribble/base

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@; Define a style for our custom styling
@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "styles.css")
                     (make-js-addition "scripts.js"))))

@title[#:style website-style]{Ryan Raschkovsky}

@section{About Me:}
Hello! My name is @bold{Ryan Raschkovsky}, and welcome to my website!

I'm an undergraduate at Northeastern University in Boston, where I am currently studying for a BA in Cybersecurity.

My Current @hyperlink["interests.scrbl"]{Interests}
I'm currently certified as an FCC Technician for Amateur Radio and am studying multiple languages including Portuguese, Japanese, Mandarin, and TokiPona.

When I'm not working on cybersecurity projects, you can find me building drones, teaching Portuguese, or exploring 3D modeling and design!

@section{Projects}
@para{Coming soon!}

@section{Skills}
@tabular[#:style 'boxed
         #:sep @hspace[1]
         (list (list @bold{Category} @bold{Skills})
               (list "Languages" "Portuguese, Japanese, Mandarin, TokiPona")
               (list "Security" "Network Security, Reverse Engineering, IoT Exploitation, OSINT")
               (list "Technical" "Amateur Radio (FCC Technician), Drone Building, 3D Modeling"))]

@section{Contact}
Feel free to reach out to me!
@tabular[#:style 'none
         (list 
           (list @image["email-icon.png" #:scale 0.12]{} @hyperlink["mailto:ryanraschkovsky@gmail.com"]{Email})
           (list @image["linkedin-icon.png" #:scale 0.12]{} @hyperlink["https://www.linkedin.com/in/ryan-rasch-664267273/"]{LinkedIn})
           (list @image["QRZ-icon.png" #:scale 0.12] {} @hyperlink["https://www.qrz.com/db/KC1WDR"]{QRZ Page})
           (list @image["pgp-icon.png" #:scale 0.12]{} @hyperlink["pgp.html"]{My PGP Public Key})
         )]
#lang scribble/base
@; SLIP

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{SLIP}

@hyperlink["current.html"]{← Back to last page}

Hello!

Welcome to a project I am currently working on, SLIP, which stands for Street Level Image Processing.

This project focuses on developing a  system for Open Source Intelligence (OSINT) gathering
through Image Processing Techniques, that I became interested in through the game @hyperlink["https://geoguessr.com"]{GeoGuessr}
The purpose is to identify geographic locations by analyzing distinctive infrastructure features
that vary between regions and countries.
The system employs advanced computer vision and machine learning techniques to extract and analyze geographical infrastructure:


@; Explination (what it does) *** WHAT IS OSINT ***
   @;Why I am Building this

@; Design Document 
@; Casual and calm about it; dont explain too much 

@image["bollard.jpg"]{}
@linebreak[]
@image["geo.png" #:scale 0.46]{}

You can read the design document @hyperlink["slip.pdf"]{here}


          
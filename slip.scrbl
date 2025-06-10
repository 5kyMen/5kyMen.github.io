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
through Image Processing Techniques, which I became interested in through the game @hyperlink["https://geoguessr.com"]{GeoGuessr}.
The purpose is to identify geographic locations by analyzing distinctive infrastructure features
that vary between regions and countries.
The system employs image processing and machine learning
  techniques to determine the geographical location from often overlooked street-side data. Existing implementations such as 
  GeoSpy or PicartaAI overly rely on large amounts of training data from satalite imagery such as Google Street view, whereas
my attempt will begin to understand common streetside patterns as a way of abstracting through a more efficent algorithm. 

@; Design Document 
@; Casual and calm about it; dont explain too much 

@image["bollard.jpg" #:scale 0.85]{}

@image["geo.png" #:scale 0.3925]{}

You can read the design document @hyperlink["slip-doc.pdf"]{here}


          
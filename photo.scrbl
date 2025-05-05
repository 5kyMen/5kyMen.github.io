#lang scribble/base
@; Photography

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties
          (for-syntax racket/base racket/syntax))

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@(define-syntax (make-photo-hyperlink stx)
   (syntax-case stx ()
     [(_ photo-number)
      #'(hyperlink (format "pictures/~a.JPG" photo-number)
                  (image (format "pictures/descaled/~a_descaled.jpg" photo-number)
                         '()))]))

@title[#:style website-style]{Photography}

@hyperlink["current.html"]{← Back to last page}

@section{Click to see image in full resolution}

  @make-photo-hyperlink{43}
  @make-photo-hyperlink{2}
  @make-photo-hyperlink{3}
  @make-photo-hyperlink{4}
  @make-photo-hyperlink{5}
  @make-photo-hyperlink{6}
  @make-photo-hyperlink{7}
  @make-photo-hyperlink{8}
  @make-photo-hyperlink{9}
  @make-photo-hyperlink{10}
  @make-photo-hyperlink{11}
  @make-photo-hyperlink{12}
  @make-photo-hyperlink{13}
  @make-photo-hyperlink{14}
  @make-photo-hyperlink{15}
  @make-photo-hyperlink{16}
  @make-photo-hyperlink{17}
  @make-photo-hyperlink{18}
  @make-photo-hyperlink{19}
  @make-photo-hyperlink{20}
  @make-photo-hyperlink{21}
  @make-photo-hyperlink{22}
  @make-photo-hyperlink{23}
  @make-photo-hyperlink{24}
  @make-photo-hyperlink{25}
  @make-photo-hyperlink{26}
  @make-photo-hyperlink{27}
  @make-photo-hyperlink{28}
  @make-photo-hyperlink{29}
  @make-photo-hyperlink{30}
  @make-photo-hyperlink{31}
  @make-photo-hyperlink{32}
  @make-photo-hyperlink{33}
  @make-photo-hyperlink{34}
  @make-photo-hyperlink{35}
  @make-photo-hyperlink{36}
  @make-photo-hyperlink{37}
  @make-photo-hyperlink{38}
  @make-photo-hyperlink{39}
  @make-photo-hyperlink{40}
  @make-photo-hyperlink{41}
  @make-photo-hyperlink{42}

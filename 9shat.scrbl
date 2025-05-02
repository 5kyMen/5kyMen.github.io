#lang scribble/base

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{ShackChat Protocol (Plan 9}

@hyperlink["current.html"]{← Back to Current page}
 
@bold{Check out my custom protocol written and made for Plan9 (ShackChat)             
                                                                                
This was made with @hyperlink["https://cmckinley.org"]{Collin Mckinley}}

@verbatim{
#include <u.h>
#include <libc.h> 
#include <thread.h>

int fd; 

void
listenloop(void *)
{
   char buf[128];
   int n;

   while(1) {
     n = read(fd, buf, sizeof(buf) -1); 
     if (n > 0) { 
       buf[n] =  '\0'; 
       print("\nServer: %s\n", buf);
     }
   }
}

void 
threadmain(int argc, char *argv[])
{
   char input[128];

   if(argc != 2) 
      exits("usage");

   fd = dial(argv[1], 0, 0, 0);


   proccreate(listenloop, nil, 8192); 

  while(1) {
     print("You: ");
     int len = read(0,input, sizeof(input) - 1);
     if (len > 0) {
        input[len] = '\0';
     }
   
     if (strcmp (input, "exit\n") == 0) 
         break;

     write(fd, input, strlen(input));
   }

   close(fd);
   exits(nil);
}
}
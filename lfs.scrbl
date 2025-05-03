#lang scribble/base
@; Custom Embedded Linux System

@(require (for-label racket))

@(require scribble/core
          scribble/html-properties
          scribble/latex-properties)

@(define website-style
   (make-style "WebsiteStyle"
               (list (make-css-addition "css-file.css"))))

@title[#:style website-style]{LFS Distrobution - CrashOS}

@hyperlink["current.html"]{← Back to last page}

@para{Hello!}

Welcome to my discussion on my current project to where I am building my own @hyperlink[" "]{Linux distribution using LFS}.

@section{Introduction}

As of now, I dont feel confident with modern Linux systems.

I find myself commonly looking back at older systems as an area of interest, where the
majority of fixes are a result of building on commercially available but poor systems that are unable to be
replaced as they hold the structural integrity of all of our modern computing. 

Countless older systems had many that were lost in time.
Operating systems such as @bold{Plan9} and @bold{Orarcle's Solaris} were rich in both functionality and design;

This is evident in SUN Microsystems' use of the ZFS pools and snapshots, and Plan9 user-defined filesystems,
both of which are implementations that could have had an instrumental effect on modern computers. 


Recently, I decided to install @hyperlink["https://wiki.gentoo.org/wiki/Handbook:Main_Page"]{Gentoo}, a minimal
and almost barebone Linux Distribution in order to both further my understanding of past systems and
to prepare myself as a precursor to understanding underlying design flaws that I could later
redesign as a means of creating something more appealing, as my Operating System's name: @bold{CrashOS}
plays on the "Daily Driving" of modern distributions. 

To speak on implementation, I first looked at the telemetry in everything underneath Solaris and explored how these systems
handled resource tracking and monitoring. This approach shows how an operating system can efficiently
manage system resources while maintaining users transparency.
For my CrashOS distribution, I plan to incorporate several key features inspired by these historical systems:

@section{Takeaways and Improvements}

One major takeaway from older technology is seen in the 
(@hyperlink["https://oracle.com/technical-resources/articles/solaris11/introduction-to-ips.html"]{IPS or Image Packaging System)
 seen in SUN Microsystem's Solaris Operating System}. 
Here, I can look at the implementation of a more robust dependency resolution system that maintains system integrity during updates.

Another implementation comes from the development of a
lightweight virtualization platform similar to Solaris Zones (Also can be seen in Open Indiana and Omni OS)
Here, I  can focus on containerization, allowing for efficient resource isolation without the overhead of full virtualization.

On the other hand, I can work on adopting concepts from ZFS pools, which can drastically improve storage management.
This also includes built-in redundancy, compression, and snapshot capabilities, where I can define a boot system that
leverages filesystem snapshots, allowing users to easily roll back to previous system states in case of configuration errors or failed updates.

Also, although less useful today, User-Defined Filesystems incorporating Plan9's abstraction system could
give users more control over how resources are accessed and shared within the system.

Although a most definitely long process, this development will of no doubt make a meaningful difference, and rid at least one
industry from the crutch of bad infrastructure, helping future generations from the pain of outdated documentation and
other such barriers to focusing on their modern technology. 

Thank you, and please make sure to check in on my website for future updates. 


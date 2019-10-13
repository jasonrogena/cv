# Curriculum Vitae for Jason Rogena
A CV written in LaTeX using the [moderncv](http://www.ctan.org/pkg/moderncv) class.

## Sample
Here's what it looks like with real data, using the "classic" style and blue color scheme:

![Image](/cv_sample.png?raw=true "Sample CV")

## Acknowledgment
This repository is now a fork of [alanorth/cv](https://github.com/alanorth/cv/). Thanks Alan!

## Usage
To "build" a PDF you simply type:

    $ make

To clean up all generated and intermediate content, type:

    $ make clean

## Pre-requistes for building
Depending on your GNU/Linux distribution the package names may be different. Basically, you need the `texlive` package, as well as whichever "extras" package contains the moderncv stuff.

__On Arch Linux:__

    $ sudo pacman -Sy texlive-core texlive-latexextra

__On Fedora:__

    $ sudo yum install texlive texlive-moderncv

__On Ubuntu:__

    $ sudo add-apt-repository ppa:texlive-backports
    $ sudo apt-get install texlive
    $ sudo apt-get --no-install-recommends install texlive-latex-extra

__Mac OS X:__ download and install [BasicTeX](https://www.tug.org/mactex/morepackages.html) (a minimal TeXLive distribution) and then:

    $ export PATH=$PATH:/usr/local/texlive/2017basic/bin/x86_64-darwin
    $ sudo tlmgr update --self
    $ sudo tlmgr install collection-fontsrecommended moderncv fontawesome

__Others:__ send a pull request with instructions for your distro.

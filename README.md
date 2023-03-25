# Curriculum Vitae for Jason Rogena
A CV written in LaTeX using the [moderncv](http://www.ctan.org/pkg/moderncv) class.

## Sample
Here's what it looks like with real data, using the "classic" style and blue color scheme:

![Image](/cv_sample.png?raw=true "Sample CV")

## Usage
To "build" a PDF you simply type:

```sh
make
```

To clean up all generated and intermediate content, type:

```sh
make clean
```

### Build Using Docker 
To build a PDF in a docker container and expose it over HTTP, type:

```sh
podman build -t jasonrogena/cv .
podman run -p <random available port on your machine>:9000 jasonrogena/cv
```

Access the generated files on your browser by hitting `http://localhost:<random port you set in docker run>`.

## Acknowledgment
This repository is now a fork of [alanorth/cv](https://github.com/alanorth/cv/). Thanks Alan!

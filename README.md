docker-rok4-build
=================

A docker container to build rok4, no run only build.
Pull the image tcoupin/rok4-build to test it!
https://registry.hub.docker.com/u/tcoupin/rok4-build/

Rok4 is an open-source WMS/WMTS Raster server made by IGN France and used by Géoportail.gouv.fr.

* www.rok4.org
* www.geoportail.gouv.fr
* www.ign.fr

What
----

This container is a build environment. The code is downloaded at run, compiled and installed in /rok4.
You can provide your version of Rok4 to build it.

Only the rok4 part is compiled, not be4 and documentation.

How
---

You must supply a volume at /rok4 to install the compiled files.
You can supply a volume at /rok4-tobuild to compile your own version of Rok4.


Ex:

```
docker build -t rok4-build ./

mkdir rok4
#To compile the latest version of Rok4
docker run -t -v $(pwd)/rok4:/rok4 rok4-build

#To compile your Rok4
docker run -t -v $(pwd)/rok4:/rok4 -v /home/you/workspace/rok4:/rok4-tobuild rok4-build
```

docker-rok4-build
=================

A docker container to build rok4, no run only build.

Rok4 is an open-source WMS/WMTS Raster server made by IGN France and used by Géoportail.gouv.fr.

* www.rok4.org
* www.geoportail.gouv.fr
* www.ign.fr

What
----

This container is a build environment. The code is downloaded at run, compiled and installed in /rok4.

Only the rok4 part is compiled, not be4 and documentation.

How
---

You must supply a volume at /rok4.


Ex:

```
docker build -t rok4-build ./
docker run -v $(pwd)/rok4:/rok4 rok4-build
```
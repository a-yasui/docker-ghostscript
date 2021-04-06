Ghostscript docker image (atyasu/ghostscript)
================================================

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Ghostscript.svg/100px-Ghostscript.svg.png)

Ghostscript is a suite of software based on an interpreter for PostScript and PDF page description languages.
Its main purposes are the rasterization or rendering of such page description language files, for the display or
printing of document pages, and the conversion between PostScript and PDF files.

Usage
-----

```bash
docker run --rm -v `pwd`:/app -w /app atyasu/ghostscript 
```

Tags
----

 Tag    | Size
 ---    | ----
 latest | [![](https://images.microbadger.com/badges/image/atyasu/ghostscript.svg)](https://microbadger.com/images/atyasu/ghostscript)


Why Fork
--------

I need arm64 image. It's just only.

Via
----

Fork From: https://github.com/minidocks/ghostscript

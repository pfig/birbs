# Installing `ipoke~`


## Caveat Emptor

**These instructions only work for macOS and possibly Linux.**
I don't have a Windows machine, so I cannot help you with that, sorry.


## Overview

Birbs depends on [ipoke~][0], a varispeed recorder. I include a pre-compiled
binary for use with the Organelle, but if you want to run Birbs on a desktop
or laptop you will have to compile it yourself.


## Prerequisites

You will need a compiler installed - XCode Command Line Tools on macOS
or GCC on Linux (use your distribution's package manager to install it).

On macOS you can install the XCode Command Line Tools by running the following
command in Terminal (`command-space terminal` to open it):

``` shell
xcode-select --install
```


## Getting `ipoke~`

You can download `ipoke~` from the [Pure Data][1] website. Move or copy
the ZIP file to the directory where these instructions live.

Alternatively you can let the build script do this for you, see below, please.


## Building `ipoke~`

There is a shell script which will hopefully make this a breeze.
Open a terminal window and change to the directory where these instructions
live, and type

``` shell
./build-ipoke.sh
```

If all goes well you should have the correct `ipoke~` binary in this directory
and can now load `birbs.pd` in Pure Data.

You can have a look at the [build script][build-ipoke.sh] if you want to check
what it is doing, of if anything goes wrong.

[0]: https://puredata.info/Members/ipoke
[1]: https://puredata.info/Members/ipoke/ipoke_v.3_test1.zip/at_download/file

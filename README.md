# Birbs

## Overview

Birbs is an Organelle port of [marylou sharrock][2]'s [bird translator][0].

A couple of months ago she donated one of her translators to
[This Museum Is Not Obsolete][3] and I immediately fell in love with it.
Sadly I did not have any Bela boards so I couldn't build my own, but I found
[the zine where she describes the machine in detail][1] and grabbed
the Pure Data patch. Soon after I had a version running on my laptop.

Then it dawned on me I have a couple of machines capable of running Pure Data,
and that I might as well port it to one of those, so I wouldn't need my laptop
and I would have more direct control over the parameters - and here we are!

## Installation

1. Load the `zop` file onto the SD card or USB drive.
1. Reload the storage.
1. Select "Install Birbs.zop"

### Dependencies

The bird translator depends on the [ipoke~][4] object, which I have included
in the installation package. If you don't trust binaries from a random stranger
on the Internet, you will need to download and compile ipoke~ yourself.
The resulting `ipoke~.pd_linux` file must be placed in the Birbs folder.

### Platform

I am running Pure Data on macOS, and my Organelle is an original model running
OS 4.0.

Unfortunately I am unable to test this on the M or S models, and thus I will be
unable to help with or fix any issues related to this. If you have an Organelle
M or S and would like to help testing Birbs, get in touch, please!

## Controls

You will need a microphone capable of working with the Organelle (I use
Critter & Guitari's Microphone, but any microphone you use with the Organelle
should do it). You can of course feed Birbs any audio.

### Knobs

- **Knob 1**: Speed
- **Knob 2**: Gap
- **Knob 3**: Delay
- **Knob 4**: Feedback

### Lower octave keys

- **C**: Recording
- **D**: Stop
- **E**: Play

TODO
- **C#**: Render buffer
- **D#**: Stop render

### Higer octave keys

- **C to B** (_white_ keys): Pitch shifter
- **C# to A#** (_black_ keys): Reverb amount

## Code

This project is maintained on [GitHub][10].

## Closing remarks

My initial thoughts were to use the Aux button as a modifier for the knobs,
so that all parameters could be controlled using the Organelle's knobs - the
bird translator has more parameters than the Organelle has knobs.

However, I really dislike multi-page setups when using knobs, as you either
have to store and recall the values for every page, or your knobs will be
in the wrong position as you move between pages. To avoid all of this I have
decided to use the keyboard for 2 parameters, Pitch shift and Reverb.

While I have tried to stay true to the original design, I did do some
refactoring and may have introduced some bugs. If you find any bug, annoyance,
or functionality that deviates from marylou's bird translator please send me
a message, it's all my fault!

## Acknowledgements

* [marylou][5]!
* `attackallmonsters` for their [soft organelle][6].
* Everyone on the [C&G forum][7].

## References

* [marylou's zine with full build details][1]

[0]: https://marylousharrock.com/bird-translator
[1]: https://marylousharrock.com/zine-1
[2]: https://www.instagram.com/marylousharrock/
[3]: https://this-museum-is-not-obsolete.com/
[4]: https://puredata.info/Members/ipoke
[5]: https://marylousharrock.com/
[6]: https://patchstorage.com/organelle-ui-for-desktop/
[7]: https://forum.critterandguitari.com
[10]: https://github.com/pfig/birbs

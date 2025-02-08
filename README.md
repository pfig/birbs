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

### Organelle

1. Load the ZIP file onto the SD card or USB drive.
1. Reload the storage.
1. Select "Install birbs-x.x.x-organelle.zip"

**N.B.**: The 1.5.1 update changes the patch name to `birbs` (note it is now
          lowercase). You will need to delete the `Birbs` folder once you are
          happy with the new version.

### Desktop

1. Download the latest release from [patchstorage][13].
1. Unzip to a location of your choice.
1. Build the external by running `./build-ipoke.sh`.
1. Open `birbs.pd` with Pure Data

### Dependencies

The bird translator depends on the [ipoke~][4] external, which I have included
in the Organelle installation package. If you don't trust binaries from a
random stranger on the Internet, you will need to download and compile ipoke~
yourself.

#### Organelle

If you are comfortable working on the Organelle, you could download
the `ipoke~` [ZIP package][15] into the birbs directory and run

``` shell
./build-ipoke.sh ipoke_v.3_test1.zip
```

The resulting `ipoke~.pd_linux` file must be placed in the `birbs` folder (the
script does this for you).

There are two options to work on the Organelle, [a display and keyboard][16]
or [remote access][17].

#### Desktop

There is no binary included in the desktop package, you will always need to
compile `ipoke~` - see the [instructions](IPOKE~.md), please.


#### Building `ipoke~`

Please follow the [instructions](IPOKE~.md) on how to build and install `ipoke~`.

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

### Organelle

#### Knobs

- **Knob 1**: Speed
- **Knob 2**: Gap
- **Knob 3**: Delay
- **Knob 4**: Feedback

#### Lower octave keys

- **C**: Recording
- **D**: Stop
- **E**: Play

#### Higer octave keys

- **C to B** (_white_ keys): Pitch shifter
- **C# to A#** (_black_ keys): Reverb amount

### Desktop

#### Keyboard and sliders

- **z**: Record
- **x**: Stop
- **c**: Play

Use the sliders on the patch to control the different parameters.

#### MIDI controller

The patch is listening on all MIDI channels.
I have included [a template for the Novation LaunchControl](birbs.syx).

##### Buttons

- **CC 9**: Record
- **CC 10**: Stop
- **CC 11**: Play

##### Knobs

- **CC 21**: Speed
- **CC 22**: Gap
- **CC 23**: Delay
- **CC 24**: Feedback
- **CC 25**: Reverb
- **CC 26**: Pitch shifter
- **CC 48**: Volume


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

### TODO

1. Update patch to match the live box in the museum.
1. Export sounds.
1. Improve desktop UI.


## Acknowledgements

* [marylou][5]!
* `attackallmonsters` for their [soft organelle][6].
* Chris Dixon ([la practica][11]) (testing)
* Adrian Newton ([Evergreen Music][12]) (testing)
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
[11]: https://linktr.ee/lapractica
[12]: https://www.evergreenmusic.uk
[13]: https://patchstorage.com/birds-2/
[14]: https://patchstorage.com/birbs/
[15]: https://puredata.info/Members/ipoke/ipoke_v.3_test1.zip/at_download/file
[16]: https://www.critterandguitari.com/manual?m=Organelle_M_Manual#6.2_Operating_the_Organelle_as_a_Computer
[17]: https://www.critterandguitari.com/manual?m=Organelle_M_Manual#7.2_Editing_Patches_Remotely

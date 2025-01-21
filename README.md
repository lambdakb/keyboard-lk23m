# LK23 Numpad / Macropad

[![Documentation](https://img.shields.io/badge/Documentation-Latest-brightgreen?style=for-the-badge&logo=docusaurus&logoColor=white)](https://lambdakb.dev/devices/lk23m)
[![GitHub Release](https://img.shields.io/github/v/release/lambdakb/keyboard-lk23m?label=Release&style=for-the-badge&logo=github&logoColor=white)](https://github.com/lambdakb/keyboard-lk23m/releases/latest)
[![License](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-green?style=for-the-badge&logo=creativecommons&logoColor=white)](/LICENSE)
[![KiCad](https://img.shields.io/badge/KiCad-v8-orange?style=for-the-badge&logo=kicad&logoColor=white&logoSize=auto)](https://www.kicad.org/)

## Layout

![Layout](assets/layout.png)

[Keyboard Layout Editor](https://www.keyboard-layout-editor.com/##@_css=.keyborder%5Bstyle*%2F=%22%23ff0000%22%5D%20%7B%0A%20%20%20%20border-radius%2F:%2050%25%20!important%2F%3B%0A%20%20%20%20background-color%2F:%20%23ccc%20!important%2F%3B%0A%7D%0A.keytop%5Bstyle*%2F=%22%23ff4223%22%5D%20%7B%0A%20%20%20%20border-radius%2F:%2050%25%20!important%2F%3B%0A%20%20%20%20background-color%2F:%20%23fff%20!important%2F%3B%0A%7D%3B&@_p=R1&a:7%3B&=%3Ci%20class%2F='kb%20kb-Multimedia-Rewind-Start'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Multimedia-Play-Pause'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Multimedia-FastForward-End'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&_c=%23ff0000&p=CHICKLET%3B&=%3Ci%20class%2F='kb%20kb-Multimedia-Volume-Up-2'%3E%3C%2F%2Fi%3E%3B&@_y:0.25&c=%23cccccc&p=R1%3B&=%3Ci%20class%2F='kb%20kb-Unicode-Lock-Closed-2'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%2F%2F%0A%0A%0A%0A1U&=*%0A%0A%0A%0A1U&=-%0A%0A%0A%0A1U%3B&@_p=R2%3B&=7%0A%0A%0A%0A1U&=8%0A%0A%0A%0A1U&=9%0A%0A%0A%0A1U&=+%0A%0A%0A%0A1U%3B&@_p=R3%3B&=4%0A%0A%0A%0A1U&=5%0A%0A%0A%0A1U&=6%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Unicode-BackSpace-DeleteLeft-Big'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U%3B&@_p=R4%3B&=1%0A%0A%0A%0A1U&=2%0A%0A%0A%0A1U&=3%0A%0A%0A%0A1U%3B&@_ry:5.25%3B&=0%0A%0A%0A%0A1U&=00%0A%0A%0A%0A1U&=.%0A%0A%0A%0A1U%3B&@_r:90&rx:3&y:-1&x:-1&w:2%3B&=%3Ci%20class%2F='kb%20kb-Return-2'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A2U)

<!-- TODO: Add alternate layout and store layout file for future vial inclusion -->

## PCB

|    Front     |    Back     |
| :----------: | :---------: |
| ![PCB Front] | ![PCB Back] |

[PCB Front]: output/img/lk23m-pcb-top.svg
[PCB Back]: output/img/lk23m-pcb-bottom.svg

<!-- TODO: add images -->
The PCB has been designed in [KiCad EDA 8.0](https://www.kicad.org/) using the [`kicad-lkbd`](https://github.com/lambdakb/kicad-lkbd) libraries and [`kbplacer`](https://github.com/adamws/kicad-kbplacer).

You can preview the project files using [KiCanvas](https://kicanvas.org/?github=https%3A%2F%2Fgithub.com%2Flambdakb%2Fkeyboard-lk23m%2Fblob%2Fmain%2Fpcb%2Flk23m-pcb.kicad_pro) directly in your browser and download the latest fabrication files for JLCPCB from the [latest release](https://github.com/lambdakb/keyboard-lk23m/releases/latest/).

The exported schematic is also available under [`output/schematics`](output/schematics/).

## Cases

### FR4

|    Plate     |    Bottom     |
| :----------: | :-----------: |
| ![FR4 Plate] | ![FR4 Bottom] |

[FR4 Plate]: output/img/lk23m-plate-top.svg
[FR4 Bottom]: output/img/lk23m-bottom-bottom.svg

The FR4 case has also been designed in [KiCad EDA 8.0](https://www.kicad.org/) and consist of two PCBs, one for the switch plate and one for the bottom plate. You can find their respective fabrication files for JLCPCB in [`output/fabrication/jlcpcb`](output/fabrication/jlcpcb/).

You can also find their board outlines as `DXF` if you wish to fabricate them by any other mean (such as laser cut acrylic) in [`output/case/dxf`](output/case/dxf).

<!-- TODO: Link to documentation and put just the minimum needed things here -->

## License

This design is released under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/), which means it is free to use, share, and adapt for non-commercial purposes, as long as proper attribution is provided and any derivative works are shared under the same license.

If you are a retailer or business interested in selling this design or products derived from it, I am open to granting commercial licenses on a case-by-case basis. Please feel free to contact us to discuss terms.

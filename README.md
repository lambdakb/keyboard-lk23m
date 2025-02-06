# LK23 Numpad / Macropad

[![Documentation](https://img.shields.io/badge/Documentation-Latest-brightgreen?style=for-the-badge&logo=docusaurus&logoColor=white)](https://lambdakb.dev/devices/lk23m)
[![GitHub Release](https://img.shields.io/github/v/release/lambdakb/keyboard-lk23m?label=Release&style=for-the-badge&logo=github&logoColor=white)](https://github.com/lambdakb/keyboard-lk23m/releases/latest)
[![License](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-ED592F?style=for-the-badge&logo=creativecommons&logoColor=white)](/LICENSE.md)
[![KiCad](https://img.shields.io/badge/KiCad-v8-orange?style=for-the-badge&logo=kicad&logoColor=white&logoSize=auto)](https://www.kicad.org/)

## Layout

![Layout](assets/layout.png)

[Keyboard Layout Editor](https://www.keyboard-layout-editor.com/##@_css=.keyborder%5Bstyle*%2F=%22%23ff0000%22%5D%20%7B%0A%20%20%20%20border-radius%2F:%2050%25%20!important%2F%3B%0A%20%20%20%20background-color%2F:%20%23ccc%20!important%2F%3B%0A%7D%0A.keytop%5Bstyle*%2F=%22%23ff4223%22%5D%20%7B%0A%20%20%20%20border-radius%2F:%2050%25%20!important%2F%3B%0A%20%20%20%20background-color%2F:%20%23fff%20!important%2F%3B%0A%7D%3B&@_p=R1&a:7%3B&=%3Ci%20class%2F='kb%20kb-Multimedia-Rewind-Start'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Multimedia-Play-Pause'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Multimedia-FastForward-End'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&_c=%23ff0000&p=CHICKLET%3B&=%3Ci%20class%2F='kb%20kb-Multimedia-Volume-Up-2'%3E%3C%2F%2Fi%3E%3B&@_y:0.25&c=%23cccccc&p=R1%3B&=%3Ci%20class%2F='kb%20kb-Unicode-Lock-Closed-2'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U&=%2F%2F%0A%0A%0A%0A1U&=*%0A%0A%0A%0A1U&=-%0A%0A%0A%0A1U%3B&@_p=R2%3B&=7%0A%0A%0A%0A1U&=8%0A%0A%0A%0A1U&=9%0A%0A%0A%0A1U&=+%0A%0A%0A%0A1U%3B&@_p=R3%3B&=4%0A%0A%0A%0A1U&=5%0A%0A%0A%0A1U&=6%0A%0A%0A%0A1U&=%3Ci%20class%2F='kb%20kb-Unicode-BackSpace-DeleteLeft-Big'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A1U%3B&@_p=R4%3B&=1%0A%0A%0A%0A1U&=2%0A%0A%0A%0A1U&=3%0A%0A%0A%0A1U%3B&@_ry:5.25%3B&=0%0A%0A%0A%0A1U&=00%0A%0A%0A%0A1U&=.%0A%0A%0A%0A1U%3B&@_r:90&rx:3&y:-1&x:-1&w:2%3B&=%3Ci%20class%2F='kb%20kb-Return-2'%3E%3C%2F%2Fi%3E%0A%0A%0A%0A2U)

<!-- TODO: Add alternate layout and store layout file for future vial inclusion -->

### Variations

This keyboard has been designed as a standalone numpad with an extra top row to be used as a macro pad or media pad, as such, it can be configured in different ways when building it.

Here is the list of supported variations:

- Optional encoder on the top left key
- Optional encoder on the top right key
- The top two center keys can be replaced by a 0.91" OLED screen

This allows for a number of configuration on the extra top row that can be used for a number of things. Each of these variations are supported in the Vial firmware under the `Layout` tab. See [Vial Layout Options](#vial-layout-options) for more details.

|    Example `#1`     |     Example `#2`      |       Example `#3`       |         Example `#4`         |
| :-----------------: | :-------------------: | :----------------------: | :--------------------------: |
| ![Example Macropad] | ![Example Media Keys] | ![Example OLED + Volume] | ![Example OLED + 2 Encoders] |

[Example Macropad]: assets/vial-macropad.png
[Example Media Keys]: assets/vial-mediapad.png
[Example OLED + Volume]: assets/vial-oled-volume.png
[Example OLED + 2 Encoders]: assets/vial-oled-knobs.png

This PCB can also be built as a wireless keyboard using a nice!nano microcontroller. See

<!-- TODO: Create a diagram of things that can be installed or not like the lotus 58 https://raw.githubusercontent.com/4EBOOT/Lotus58/Glow/Glow/Image/layout_variations.png  -->
<!-- TODO: In firmware show all options and what they do in a table -->

### Wireless Support

The wireless variant of this keyboard requires a controller that provides power input and a charging circuit between the top RAW and GND such as the `nice!nano`.

The PCB itself provides a way to attach a JST-PH connector as well as a slide switch for power management. This slide switch must be set to ON for the charging circuit to work.

This hasn't been extensively tested yet and should be considered experimental (no wireless firmware will be provided for now). The feature was added to the PCB as way for us to prototype a potential wireless keyboard.

## BOM

| Part                   | Ref.                                                                                 | Quantity | Optional | Remarks                                                                                                                                                              |
| ---------------------- | ------------------------------------------------------------------------------------ | :------: | :------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| PCB                    | [LK23M v1.00 PCB](#pcb)                                                              |    1     |    ❌    | See [PCB](#pcb) section for more info.                                                                                                                               |
| Top Plate              | [FR4 Top Plate](#fr4)                                                                |    1     |    ✅    | Optional if using an alternative case.                                                                                                                               |
| Bottom Plate           | [FR4 Bottom Plate](#fr4)                                                             |    1     |    ✅    | Optional if using an alternative case.                                                                                                                               |
| Case Screws            | [M2 × 4 mm Low Profile Socket Head Screw (Hex)]                                      |    8     |    ✅    | Optional if using an alternative case. Low profile hex head screws are recommended, but any will work. Screws up to 8 mm in length should work.                      |
| Case Standoffs         | [M2 × 12 mm Brass Hex Standoff]                                                      |    4     |    ✅    | Optional if using an alternative case. Longer / shorter standoff could work depending on how the controller is mounted and if using a battery.                       |
| Pro Micro Controller   | [Arduino Pro Micro 5V], [Adafruit KB2040] or [nice!nano]                             |    1     |    ❌    | Supports various Pro Micro style controller (including RP2040 based ones) as well as the nice!nano for wireless builds. [^wireless]                                  |
| MCU Socket             | [DIP-24 Round Socket (Wide, 15.24 mm)]                                               |    1     |    ✅    | Recommended to socket the controller, can be omitted if soldered directly.                                                                                           |
| 1N418 Diodes           | [1N4148W T4 SOD-323] (SMD) or [1N4148 DO-35] (THT)                                   |  21-23   |    ❌    | Only 21 diodes are needed if the OLED screen is installed.                                                                                                           |
| Kailh Hot-Swap Sockets | [CPG151101S11-16] (SMD)                                                              |    19    |    ✅    | The top 4 keys can not be made hot-swappable due to size constraint and need to be soldered directly. All switches can be soldered directly to the PCB if preferred. |
| Key Switches           | Any [Cherry MX] Compatible Wwitch                                                    |  19-23   |    ❌    | Amount depends on the variant built, a two encoder OLED setup would require 2 EC12 encoder and 19 MX switches, while the key switches only variant needs 23.         |
| Rotary Encoder(s)      | Any [EC11] / [EC12] style 5-pin Encoder                                              |   0-2    |    ✅    | Optional, can be installed in place of the top left and/or top right most switches.                                                                                  |
| 100nF Capacitor(s)     | [1206 SMD Ceramic Capacitor] (SMD) or [104 Ceramic Disk Capacitor (5 × 2.5mm)] (THT) |   0-4    |    ✅    | Two recommended per encoder for noise filtering.                                                                                                                     |
| Reset Push Button      | [DIP 2pin Momentary Push Button (6 × 3.5 mm)]] (THT)                                 |    1     |    ✅    | Used as a reset switch, can be omitted if you flash the controller before installing it or if the controller can be put in bootloader mode from any other means.     |
| 0.91" OLED Display     | [SSD1306 0.91" 128X32 OLED I²C Display Module]                                       |   0-1    |    ✅    | Optional, replace the top middle two switches.                                                                                                                       |
| Power Slide Switch     | [PCM12SMTR] (SMD) or [MSK-12C02] (SMD)                                               |    1     |    ✅    | Only required for battery powered wireless builds. [^wireless]                                                                                                       |
| Battery Connector      | [JST-PH 2pin right-angle Male Connector]                                             |    1     |    ✅    | Only needed for battery powered wireless builds if the battery is not soldered directly to the board (recommended). [^wireless]                                      |

<!-- TODO: Add links to datasheet / parts / aliexpress -->
<!-- NOTE: should we create a separate BOM for the case if we provide two different case ? -->

[M2 × 4 mm Low Profile Socket Head Screw (Hex)]: https://www.aliexpress.com/item/4001072025844.html
[M2 × 12 mm Brass Hex Standoff]: https://www.aliexpress.com/item/1005006049595637.html
[Arduino Pro Micro 5V]: https://www.sparkfun.com/pro-micro-5v-16mhz.html
[Adafruit KB2040]: https://www.adafruit.com/product/5302
[nice!nano]: https://nicekeyboards.com/nice-nano/
[DIP-24 Round Socket (Wide, 15.24 mm)]: https://www.aliexpress.com/item/1005005770166098.html
[1N4148W T4 SOD-323]: https://www.aliexpress.com/item/1005006127619725.html
[1N4148 DO-35]: https://www.aliexpress.com/item/4000142272546.html
[CPG151101S11-16]: https://www.aliexpress.com/item/1005007052649640.html
[Cherry MX]: https://www.aliexpress.com/item/1005006255961111.html
[EC11]: https://www.aliexpress.com/item/32382989585.html
[EC12]: https://www.aliexpress.com/item/1005005196870256.html
[1206 SMD ceramic capacitor]: https://www.aliexpress.com/item/32966490820.html
[104 Ceramic Disk Capacitor (5 × 2.5mm)]: https://www.aliexpress.com/item/32971478818.html
[DIP 2pin Momentary Push Button (6 × 3.5 mm)]: https://www.aliexpress.com/item/1005001849576755.html
[SSD1306 0.91" 128X32 OLED I²C Display Module]: https://www.aliexpress.com/item/32777216785.html
[PCM12SMTR]: https://www.digikey.com/en/products/detail/c-k/PCM12SMTR/1640112
[MSK-12C02]: https://www.aliexpress.com/item/4000685483225.html
[JST-PH 2pin right-angle Male Connector]: https://www.aliexpress.com/item/1005004955655144.html

[^wireless]: See [Wireless Support](#wireless-support) for more details about how it can be achieved.

## PCB

|             Front             |            Back             |
| :---------------------------: | :-------------------------: |
| [![PCB Front]][PCB Front PNG] | [![PCB Back]][PCB Back PNG] |

[PCB Front]: output/img/lk23m-pcb-top.svg
[PCB Front PNG]: output/img/lk23m-pcb-top.png
[PCB Back]: output/img/lk23m-pcb-bottom.svg
[PCB Back PNG]: output/img/lk23m-pcb-bottom.png

The PCB has been designed in [KiCad EDA 8.0](https://www.kicad.org/) using the [`kicad-lkbd`](https://github.com/lambdakb/kicad-lkbd) libraries and [`kbplacer`](https://github.com/adamws/kicad-kbplacer).

You can preview the project files using [KiCanvas](https://kicanvas.org/?github=https%3A%2F%2Fgithub.com%2Flambdakb%2Fkeyboard-lk23m%2Fblob%2Fmain%2Fpcb%2Flk23m-pcb.kicad_pro) directly in your browser and download the latest fabrication files for JLCPCB from the [latest release](https://github.com/lambdakb/keyboard-lk23m/releases/latest/).

The exported schematic is also available under [`output/schematics`](output/schematics/).

## Cases

### FR4

|             Plate             |             Bottom              |
| :---------------------------: | :-----------------------------: |
| [![FR4 Plate]][FR4 Plate PNG] | [![FR4 Bottom]][FR4 Bottom PNG] |

[FR4 Plate]: output/img/lk23m-plate-top.svg
[FR4 Plate PNG]: output/img/lk23m-plate-top.png
[FR4 Bottom]: output/img/lk23m-bottom-bottom.svg
[FR4 Bottom PNG]: output/img/lk23m-bottom-bottom.png

The FR4 case has also been designed in [KiCad EDA 8.0](https://www.kicad.org/) and consist of two PCBs, one for the switch plate and one for the bottom plate. You can find their respective fabrication files for JLCPCB in [`output/fabrication/jlcpcb`](output/fabrication/jlcpcb/).

You can also find their board outlines as `DXF` if you wish to fabricate them by any other mean (such as laser cut acrylic) in [`output/case/dxf`](output/case/dxf).

<!-- TODO: Link to documentation and put just the minimum needed things here -->

## Firmware

### Vial Layout Options

| Default           | Disable Left Encoder           | Disable Right Encoder           | OLED Screen in Center           |
| ----------------- | ------------------------------ | ------------------------------- | ------------------------------- |
| ![Layout Default] | ![Layout Disable Left Encoder] | ![Layout Disable Right Encoder] | ![Layout OLED Screen in Center] |

[Layout Default]: assets/vial-layout-default.png
[Layout Disable Left Encoder]: assets/vial-layout-left-encoder.png
[Layout Disable Right Encoder]: assets/vial-layout-right-encoder.png
[Layout OLED Screen in Center]: assets/vial-layout-oled-screen.png

Each of these options can be combined to match the physical layout of your build.

## License

This design is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You are free to use, share, and adapt the design for non-commercial purposes, provided that:

- **Attribution**: Proper credit must be given, a link to the license provided, and any changes indicated.
- **NonCommercial**: The material cannot be used for commercial purposes without prior approval.
- **ShareAlike**: Any derivative works must be distributed under the same license.

If you are a retailer or business interested in selling this design or products derived from it, I am open to granting commercial licenses on a case-by-case basis. Please feel free to contact me to discuss terms.

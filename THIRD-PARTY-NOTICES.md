# Third-party notices

This file records the third-party fonts and other separately licensed material included in this repository. It identifies the upstream projects, local license files, and the boundaries between third-party assets and original project material.

**Important:** A license applying to one part of this repository does not automatically apply to every other part. In particular, the Apache and Creative Commons notices for original project material do not replace the licenses of third-party fonts or generated dashboard files.

## License boundaries

| Material | Applicable notice |
|---|---|
| Eligible original software code authored for this project | [Apache License 2.0](LICENSE) |
| Eligible original written and literary content authored by Parsa | [CC BY 4.0](CONTENT-LICENSE.md) |
| Third-party fonts | Their individual SIL Open Font License 1.1 files in [`licenses/`](licenses/) |
| Generated status dashboard under `upptime/` | Its preserved upstream [MIT license](upptime/LICENSE) |
| Other third-party assets or dependencies | Their own upstream license and attribution notices |

These descriptions apply only where the relevant copyright holder has the rights to grant the stated license. Third-party material is not relicensed by this repository.

## Web font delivery on the English homepage

The English homepage references the following font families through its CSS stacks: Inter, DM Sans, Space Grotesk, Pixelify Sans, and Press Start 2P. The page can request these families from Google Fonts, use Bunny Fonts as a stylesheet-level fallback if the Google Fonts stylesheet fails, and use Fontsource CSS as an additional family fallback. Fontsource's CDN is backed by jsDelivr; it is a separate package route, not an independent CDN network.

The delivery order and implementation details are documented in [FONT-DELIVERY.md](FONT-DELIVERY.md). CDN delivery does not change font ownership or licensing. Each font remains governed by its own upstream license and the corresponding notice in this file. The actual locally bundled files are inventoried in [fonts/README.md](fonts/README.md).

## Generated status dashboard

The generated site under `upptime/` comes from the separate [aftervoid/upptime project](https://github.com/aftervoid/upptime), which is based on [Upptime](https://upptime.js.org/). Its generated output is not covered by the root Apache or CC BY notices. The upstream MIT license and its required notice are preserved in [`upptime/LICENSE`](upptime/LICENSE).

## Bundled font inventory

The font files below are stored in this repository and served from the website's own origin.

| Font family | Current role | Local files |
|---|---|---|
| **Cascadia Code** | Code samples and phonetic/IPA text | `fonts/CascadiaCode.woff2` |
| **Cormorant Garamond** | English Royesh story display headings | `fonts/CormorantGaramond-Light.woff2`, `Regular`, `Medium`, `SemiBold`, `Bold`, `Italic` |
| **Inter** | English Royesh story interface | `fonts/InterVariable.woff2` |
| **Lora** | English Royesh story prose | `fonts/Lora[wght].woff2` |
| **Pixelify Sans** | English homepage interface and body text | `fonts/PixelifySans[wght].ttf` |
| **Press Start 2P** | English homepage headings | `fonts/PressStart2P-Regular.ttf` |
| **Rooyin** | Persian homepage interface and reading text | `fonts/rooyin/RooyinFree-Regular.woff2`, `fonts/rooyin/RooyinFree-Bold.woff2` |
| **Vazirmatn** | Retained Persian font asset and fallback use | `fonts/Vazirmatn.woff2` |

All eight font families are accompanied by local license texts in [`licenses/`](licenses/). Each family is identified by its upstream notice as licensed under the **SIL Open Font License, Version 1.1 (OFL-1.1)**.

## Font attribution

The following details summarize the upstream notices. The complete local license text is the authoritative copy included with each font.

### Cascadia Code
- Copyright: © 2019–present Microsoft Corporation.
- Reserved Font Name: Cascadia Code.
- Upstream: https://github.com/microsoft/cascadia-code
- Local license: [`licenses/Cascadia-Code-LICENSE.txt`](licenses/Cascadia-Code-LICENSE.txt)

### Cormorant Garamond
- Copyright: © 2015 The Cormorant Project Authors.
- Upstream: https://github.com/CatharsisFonts/Cormorant
- Local license: [`licenses/Cormorant-Garamond-OFL.txt`](licenses/Cormorant-Garamond-OFL.txt)

### Inter
- Copyright: © 2016 The Inter Project Authors.
- Upstream: https://github.com/rsms/inter
- Local license: [`licenses/Inter-font-LICENSE.txt`](licenses/Inter-font-LICENSE.txt)

### Lora
- Copyright: © 2011 The Lora Project Authors.
- Reserved Font Name: Lora.
- Upstream: https://github.com/cyrealtype/Lora-Cyrillic
- Local license: [`licenses/lora-font-license.txt`](licenses/lora-font-license.txt)

### Pixelify Sans
- Copyright: © 2021 The Pixelify Sans Project Authors.
- Upstream: https://github.com/eifetx/Pixelify-Sans
- Local license: [`licenses/PixelifySans-OFL.txt`](licenses/PixelifySans-OFL.txt)

### Press Start 2P
- Copyright: © 2012 The Press Start 2P Project Authors.
- Reserved Font Name: Press Start 2P.
- Upstream: https://github.com/google/fonts/tree/main/ofl/pressstart2p
- Local license: [`licenses/PressStart2P-OFL.txt`](licenses/PressStart2P-OFL.txt)

### Rooyin
- Copyright: © 2025 The Rooyin-Perfect Project Authors (https://Fontiran.com/Rooyin).
- Reserved Font Name: Rooyin.
- Upstream: https://github.com/MohamadDarvishi/Rooyin
- Local license: [`licenses/Rooyin-OFL.txt`](licenses/Rooyin-OFL.txt)

### Vazirmatn
- Copyright: © 2015 The Vazirmatn Project Authors.
- Upstream: https://github.com/rastikerdar/vazirmatn
- Local license: [`licenses/Vazirmatn-font-license.txt`](licenses/Vazirmatn-font-license.txt)

## OFL redistribution notes

The OFL permits font software to be used, embedded, modified, and redistributed subject to its conditions. When redistributing the font software:

- Include the applicable copyright notice and complete OFL text.
- Do not sell the font software by itself.
- Do not relicense the font software under different terms.
- Respect any Reserved Font Name declared by the upstream notice when distributing a modified version.
- Do not use the upstream authors' or copyright holders' names to promote a modified version without permission.

A format conversion or other change can count as a Modified Version under the OFL. Check the [official OFL text](https://openfontlicense.org/) and [OFL FAQ](https://openfontlicense.org/ofl-faq/) before modifying or converting font files.

## Automated license maintenance

The [Update font licenses workflow](.github/workflows/update-font-licenses.yml) runs every Monday at 08:23 UTC and supports manual runs from the **Actions** tab. Its current script checks these five upstream license texts:

- Cormorant Garamond
- Inter
- Lora
- Cascadia Code
- Vazirmatn

It validates each download before updating the matching local license file. It does not download or modify font binaries, and it does not currently automate license checks for Rooyin, Pixelify Sans, or Press Start 2P. Attribution details and Reserved Font Name declarations also require human review when font versions change.

## Related documentation

- [Repository overview](README.md)
- [Font file inventory](fonts/README.md)
- [Font license index](licenses/README.md)
- [Original content license](CONTENT-LICENSE.md)

This document is an attribution and navigation aid, not legal advice. For exact terms, consult the complete license file supplied with the relevant material.

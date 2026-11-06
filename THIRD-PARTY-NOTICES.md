# Third-Party Notices

This repository bundles third-party webfont software. The website serves these font files from its own repository; the pages do not load them from Google Fonts or another external font CDN.

**The font licenses apply to the font software only.** They do not automatically license the website source code, the *Royesh* story, illustrations, or other original material in this repository.

## Repository license boundaries

- Original software code authored for this project is licensed under the [Apache License 2.0](LICENSE).
- Original literary and written content authored by Parsa, including the Persian and English *Royesh* story, is licensed under [CC BY 4.0](CONTENT-LICENSE.md).
- Third-party fonts and other third-party assets are excluded from those project licenses and remain under their own terms.
- The name used for project copyright attribution is **Parsa**. Third-party copyright notices below are preserved exactly as applicable to their respective works.

## Generated status dashboard

The generated website under `upptime/` is the published output of the separate
[`the-par3a/upptime`](https://github.com/the-par3a/upptime) project, which is
based on [Upptime](https://upptime.js.org/). It is **not** relicensed under
the root Apache or CC BY terms in this repository. The upstream MIT license
and its required copyright notice are preserved in [`upptime/LICENSE`](upptime/LICENSE).
Other bundled dependencies or assets may have their own separate notices.

## Bundled font inventory

| Font family | Use on the site | Files included |
|---|---|---|
| Cormorant Garamond | English headings and display typography | `fonts/CormorantGaramond-Light.woff2`, `Regular`, `Medium`, `SemiBold`, `Bold`, and `Italic` |
| Inter | English interface, navigation, and controls | `fonts/InterVariable.woff2` |
| Lora | English story prose and long-form reading | `fonts/Lora[wght].woff2` |
| Cascadia Code | Code samples and phonetic/IPA text | `fonts/CascadiaCode.woff2` |
| Vazirmatn | Persian interface and reading text (retained as a local fallback asset) | `fonts/Vazirmatn.woff2` |
| Rooyin | Persian homepage interface and reading text | `fonts/rooyin/RooyinFree-Regular.woff2`, `fonts/rooyin/RooyinFree-Bold.woff2` |
| Pixelify Sans | English homepage interface and body text | `fonts/PixelifySans[wght].ttf` |
| Press Start 2P | English homepage headings | `fonts/PressStart2P-Regular.ttf`

All eight font families are distributed under the **SIL Open Font License, Version 1.1 (OFL-1.1)**. The complete license texts and their copyright notices are included in [`licenses/`](licenses/).

## Font-specific attribution

### Cormorant Garamond
- Copyright: Copyright 2015 the Cormorant Project Authors.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/CatharsisFonts/Cormorant
- Included license: [`licenses/Cormorant-Garamond-OFL.txt`](licenses/Cormorant-Garamond-OFL.txt)

### Inter
- Copyright: Copyright (c) 2016 The Inter Project Authors.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/rsms/inter
- Included license: [`licenses/Inter-font-LICENSE.txt`](licenses/Inter-font-LICENSE.txt)

### Lora
- Copyright: Copyright 2011 The Lora Project Authors.
- Reserved Font Name: Lora.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/cyrealtype/Lora-Cyrillic
- Included license: [`licenses/lora-font-license.txt`](licenses/lora-font-license.txt)

### Cascadia Code
- Copyright: Copyright (c) 2019 - Present, Microsoft Corporation.
- Reserved Font Name: Cascadia Code.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/microsoft/cascadia-code
- Included license: [`licenses/Cascadia-Code-LICENSE.txt`](licenses/Cascadia-Code-LICENSE.txt)

### Vazirmatn
- Copyright: Copyright 2015 The Vazirmatn Project Authors.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/rastikerdar/vazirmatn
- Included license: [`licenses/Vazirmatn-font-license.txt`](licenses/Vazirmatn-font-license.txt)

### Rooyin
- Copyright: Copyright 2025 The Rooyin-Perfect Project Authors (https://Fontiran.com/Rooyin).
- Reserved Font Name: Rooyin.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/MohamadDarvishi/Rooyin
- Bundled webfonts: `fonts/rooyin/RooyinFree-Regular.woff2` and `fonts/rooyin/RooyinFree-Bold.woff2` (original WOFF2 files from the upstream project).
- Included license: [`licenses/Rooyin-OFL.txt`](licenses/Rooyin-OFL.txt)

### Pixelify Sans
- Copyright: Copyright 2021 The Pixelify Sans Project Authors (https://github.com/eifetx/Pixelify-Sans).
- Designer: Stefie Justprince.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/eifetx/Pixelify-Sans
- Bundled font: `fonts/PixelifySans[wght].ttf` (original variable TTF from Google Fonts).
- Included license: [`licenses/PixelifySans-OFL.txt`](licenses/PixelifySans-OFL.txt)

### Press Start 2P
- Copyright: Copyright 2012 The Press Start 2P Project Authors.
- Reserved Font Name: Press Start 2P.
- License: SIL Open Font License 1.1.
- Upstream project: https://github.com/google/fonts/tree/main/ofl/pressstart2p
- Bundled font: `fonts/PressStart2P-Regular.ttf` (original TTF from Google Fonts).
- Included license: [`licenses/PressStart2P-OFL.txt`](licenses/PressStart2P-OFL.txt)

## Redistribution and modification notes

- Keep the relevant copyright notice and the complete OFL text with redistributed font software.
- OFL font software may be bundled with software and distributed with it; the font software itself must not be sold on its own.
- The OFL does not permit distributing the font software under a different license.
- Lora and Cascadia Code have Reserved Font Names. A modified version must not use the relevant reserved name unless the copyright holder grants written permission.
- A WOFF/WOFF2 format conversion is not automatically exempt from the OFL's modified-version rules. Preserving the original font data and equivalent metadata matters; review the OFL FAQ before converting or modifying font binaries.

## Automated license maintenance

The [Update font licenses GitHub Actions workflow](.github/workflows/update-font-licenses.yml) checks the five upstream license texts weekly and supports manual runs. If a license text changes, it updates the corresponding file under `licenses/` and commits the change. It does not download or modify font binaries, and it does not automatically revise attribution or Reserved Font Name notes; those require human review.

For the exact legal terms, read the complete license files in [`licenses/`](licenses/). These notices are informational and are not legal advice.

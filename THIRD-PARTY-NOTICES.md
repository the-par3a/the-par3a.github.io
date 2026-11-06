# Third-Party Notices

This repository bundles third-party webfont software. Most font files are served from this repository. Rooyin is currently served from the jsDelivr CDN using the upstream GitHub repository; the site does not load fonts from Google Fonts.

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
| Rooyin | Persian homepage interface and reading text (served by jsDelivr) | Upstream WOFF2 Regular and Bold files; see attribution below |

All six font families are distributed under the **SIL Open Font License, Version 1.1 (OFL-1.1)**. The complete license texts and their copyright notices are included in [`licenses/`](licenses/).

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
- Webfont source: https://cdn.jsdelivr.net/gh/MohamadDarvishi/Rooyin@main/Fonts/Farsi%20Numerals/Webfont/
- Included license: [`licenses/Rooyin-OFL.txt`](licenses/Rooyin-OFL.txt)

## Redistribution and modification notes

- Keep the relevant copyright notice and the complete OFL text with redistributed font software.
- OFL font software may be bundled with software and distributed with it; the font software itself must not be sold on its own.
- The OFL does not permit distributing the font software under a different license.
- Lora and Cascadia Code have Reserved Font Names. A modified version must not use the relevant reserved name unless the copyright holder grants written permission.
- A WOFF/WOFF2 format conversion is not automatically exempt from the OFL's modified-version rules. Preserving the original font data and equivalent metadata matters; review the OFL FAQ before converting or modifying font binaries.

## Automated license maintenance

The [Update font licenses GitHub Actions workflow](.github/workflows/update-font-licenses.yml) checks the five upstream license texts weekly and supports manual runs. If a license text changes, it updates the corresponding file under `licenses/` and commits the change. It does not download or modify font binaries, and it does not automatically revise attribution or Reserved Font Name notes; those require human review.

For the exact legal terms, read the complete license files in [`licenses/`](licenses/). These notices are informational and are not legal advice.

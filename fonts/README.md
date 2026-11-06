# Website fonts

This directory contains the font files used by the website. Fonts are hosted in this repository and loaded from the site's own origin; the pages do not need a third-party font CDN at runtime.

## Font inventory

| Family | Files in this directory | Main use |
|---|---|---|
| **Rooyin** | `rooyin/RooyinFree-Regular.woff2`, `rooyin/RooyinFree-Bold.woff2` | Persian homepage interface and reading text |
| **Pixelify Sans** | `PixelifySans[wght].ttf` | English homepage interface and body text |
| **Press Start 2P** | `PressStart2P-Regular.ttf` | English homepage headings |
| **Inter** | `InterVariable.woff2` | English Royesh story interface and supporting text |
| **Lora** | `Lora[wght].woff2` | English Royesh story prose |
| **Cormorant Garamond** | `CormorantGaramond-Light.woff2`, `CormorantGaramond-Regular.woff2`, `CormorantGaramond-Medium.woff2`, `CormorantGaramond-SemiBold.woff2`, `CormorantGaramond-Bold.woff2`, `CormorantGaramond-Italic.woff2` | English Royesh story display typography |
| **Cascadia Code** | `CascadiaCode.woff2` | Code samples and phonetic/IPA notation |
| **Vazirmatn** | `Vazirmatn.woff2` | Retained Persian font asset and fallback use |

The homepage and the long-form story use different typographic systems. The English homepage uses Pixelify Sans for ordinary interface text and Press Start 2P selectively for headings. The English story uses Inter, Lora, Cormorant Garamond, and Cascadia Code for distinct reading and display roles. Persian homepage text uses Rooyin.

## Licensing

All eight font families listed above are distributed under the **SIL Open Font License, Version 1.1 (OFL-1.1)**, according to the accompanying upstream notices. The complete license texts are stored in [`../licenses/`](../licenses/).

For copyright notices, upstream project links, Reserved Font Name declarations, and redistribution notes, see [`../THIRD-PARTY-NOTICES.md`](../THIRD-PARTY-NOTICES.md). The license files—not this summary—contain the applicable legal terms.

## Updating a font

Before replacing, converting, subsetting, or modifying a font:

1. Identify the exact upstream project and version.
2. Read that version's copyright notice and complete license.
3. Check whether the upstream notice declares a **Reserved Font Name**.
4. Confirm that the intended file format and any conversion comply with the OFL and its FAQ.
5. Update this inventory, the matching file in `licenses/`, and the attribution in `THIRD-PARTY-NOTICES.md`.
6. Test the relevant pages, including fallback behavior and mobile layouts.

The automated workflow currently synchronizes license texts for Cormorant Garamond, Inter, Lora, Cascadia Code, and Vazirmatn only. It does not update font binaries and does not automatically check Rooyin, Pixelify Sans, or Press Start 2P.

## Scope

Font licenses apply to the font software. They do not automatically license the website's source code, the Royesh story, illustrations, or other original content. See the repository's [license overview](../README.md#license-overview).

# Website webfonts

This directory contains the webfont files actually used by the website. They are **self-hosted**: pages load them from this repository rather than from Google Fonts or another external font CDN.

## Font inventory

| Family | File(s) | Purpose |
|---|---|---|
| Inter | `InterVariable.woff2` | English interface, navigation, and controls |
| Lora | `Lora[wght].woff2` | English story prose and long-form reading |
| Cormorant Garamond | `CormorantGaramond-Light.woff2`, `Regular`, `Medium`, `SemiBold`, `Bold`, `Italic` | English headings and display typography |
| Cascadia Code | `CascadiaCode.woff2` | Code samples and IPA/phonetic notation |
| Vazirmatn | `Vazirmatn.woff2` | Persian interface and reading text |

The English story's typographic system assigns a separate role to interface text, long-form prose, headings, and technical notation. The Persian pages use Vazirmatn.

## Licensing and provenance

All five families are bundled under the **SIL Open Font License, Version 1.1 (OFL-1.1)**. Full license texts and copyright notices are stored separately in [`../licenses/`](../licenses/).

See [`../THIRD-PARTY-NOTICES.md`](../THIRD-PARTY-NOTICES.md) for upstream project links, family-specific attribution, Reserved Font Name notes, and a plain-language summary of the license conditions.

The font licenses apply to the font software only. They do not automatically license the website source code, the Royesh story, illustrations, or other original repository material.

## Updates

The [Update font licenses workflow](../.github/workflows/update-font-licenses.yml) checks upstream license texts weekly and can be run manually. It updates license text files only; it does not update these font binaries.

Before adding, replacing, subsetting, converting, or modifying a font:
1. Verify the exact upstream project and version.
2. Review the upstream license and copyright notice.
3. Check Reserved Font Name conditions and the OFL FAQ, especially for WOFF/WOFF2 conversions.
4. Update this inventory and the corresponding license/attribution documentation.

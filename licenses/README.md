# Font licenses

This directory contains the complete license texts distributed with the third-party font files in [`../fonts/`](../fonts/). Keep these files with the fonts when redistributing the font software.

## License index

| Font family | Copyright attribution in upstream notice | Reserved Font Name | Local license file |
|---|---|---|---|
| Cascadia Code | Microsoft Corporation, 2019–present | Cascadia Code | [`Cascadia-Code-LICENSE.txt`](Cascadia-Code-LICENSE.txt) |
| Cormorant Garamond | The Cormorant Project Authors, 2015 | None stated in the included notice | [`Cormorant-Garamond-OFL.txt`](Cormorant-Garamond-OFL.txt) |
| Inter | The Inter Project Authors, 2016 | None stated in the included notice | [`Inter-font-LICENSE.txt`](Inter-font-LICENSE.txt) |
| Lora | The Lora Project Authors, 2011 | Lora | [`lora-font-license.txt`](lora-font-license.txt) |
| Pixelify Sans | The Pixelify Sans Project Authors, 2021 | Check the included notice for the exact declaration | [`PixelifySans-OFL.txt`](PixelifySans-OFL.txt) |
| Press Start 2P | The Press Start 2P Project Authors, 2012 | Press Start 2P | [`PressStart2P-OFL.txt`](PressStart2P-OFL.txt) |
| Rooyin | The Rooyin-Perfect Project Authors, 2025 | Rooyin | [`Rooyin-OFL.txt`](Rooyin-OFL.txt) |
| Vazirmatn | The Vazirmatn Project Authors, 2015 | None stated in the included notice | [`Vazirmatn-font-license.txt`](Vazirmatn-font-license.txt) |

All eight families are identified in their included notices as using the **SIL Open Font License, Version 1.1 (OFL-1.1)**. The copyright and Reserved Font Name entries above are a quick index only. When redistributing or modifying a font, consult its complete local license file and the upstream project's current notice.

## What the OFL means in practice

The OFL permits use, study, embedding, modification, and redistribution of covered font software, subject to its conditions. In particular:

- Do not sell the font software by itself.
- When distributing font software, include the relevant copyright notice and complete license.
- Keep the font software under the OFL; do not relicense the font files under another license.
- If a font declares a Reserved Font Name, do not use that name for a modified version unless the copyright holder grants permission.
- Do not use the copyright holder's or authors' names to promote a modified font without permission.

This is a short orientation, not a substitute for the full license or legal advice. The OFL does not impose its font-software license on documents or artwork merely created using the font.

## Automated checks

The [Update font licenses workflow](../.github/workflows/update-font-licenses.yml) runs weekly (Monday, 08:23 UTC) and can be started manually from the repository's **Actions** tab.

At present, the script checks the upstream license texts for:

- Cormorant Garamond
- Inter
- Lora
- Cascadia Code
- Vazirmatn

It validates that each download is non-empty and contains the expected SIL Open Font License identifier before replacing a local text file. It does not update font binaries, metadata, attribution summaries, or Reserved Font Name information. **Rooyin, Pixelify Sans, and Press Start 2P are not currently included in this automated check** and must be reviewed manually when their upstream versions change.

If a workflow run fails, inspect its logs and verify the upstream source before editing a local license file. A failed download should not be treated as evidence that the upstream license has changed.

## Maintenance checklist

1. Keep one complete license text for every bundled font family.
2. Preserve upstream copyright statements and Reserved Font Name declarations.
3. Verify license provenance whenever a font or upstream version changes.
4. Keep this index, [`fonts/README.md`](../fonts/README.md), and [`THIRD-PARTY-NOTICES.md`](../THIRD-PARTY-NOTICES.md) consistent.
5. Do not edit the legal text merely to make it shorter or easier to read; explain it in documentation instead.

## Official references

- [SIL Open Font License 1.1](https://openfontlicense.org/)
- [Official OFL FAQ](https://openfontlicense.org/ofl-faq/)
- [Third-party notices](../THIRD-PARTY-NOTICES.md)

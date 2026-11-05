# Font license directory

This directory stores the complete license text and copyright attribution for every font family currently bundled in [`../fonts/`](../fonts/).

## License index

| Font family | Copyright attribution | Reserved Font Name | License file |
|---|---|---|---|
| Cormorant Garamond | 2015 the Cormorant Project Authors | None stated in the included upstream notice | [`Cormorant-Garamond-OFL.txt`](Cormorant-Garamond-OFL.txt) |
| Cascadia Code | 2019–present Microsoft Corporation | Cascadia Code | [`Cascadia-Code-LICENSE.txt`](Cascadia-Code-LICENSE.txt) |
| Inter | 2016 The Inter Project Authors | None stated in the included notice | [`Inter-font-LICENSE.txt`](Inter-font-LICENSE.txt) |
| Lora | 2011 The Lora Project Authors | Lora | [`lora-font-license.txt`](lora-font-license.txt) |
| Vazirmatn | 2015 The Vazirmatn Project Authors | None stated in the included notice | [`Vazirmatn-font-license.txt`](Vazirmatn-font-license.txt) |

All five families currently use the **SIL Open Font License, Version 1.1 (OFL-1.1)**. Read each complete file for the legally operative terms; this index is only a navigation and attribution aid.

## Automatic upstream checks

The GitHub Actions workflow [Update font licenses](../.github/workflows/update-font-licenses.yml) checks the upstream license text for each bundled family every Monday at 08:23 UTC. A maintainer can also start it manually from the repository's **Actions** tab.

If a source license changes, the workflow checks the download and its expected OFL identifier, then commits the changed license text to this directory. It does not update font binaries, infer new copyright holders, or rewrite Reserved Font Name metadata. Those changes require a separate review.

If a check fails, inspect the workflow log before changing any local license file. A failed download or unexpected license format is intentionally treated as an error rather than silently overwriting the existing notice.

## Maintenance rules

1. Keep the complete upstream license text and required copyright notices with the distributed font software.
2. Do not sell OFL font software by itself or relicense it under different terms.
3. Before modifying or converting font files, review the OFL conditions and FAQ—especially Reserved Font Names and WOFF/WOFF2 conversion.
4. Keep this index, [`fonts/README.md`](../fonts/README.md), and [`THIRD-PARTY-NOTICES.md`](../THIRD-PARTY-NOTICES.md) consistent with the actual files in `fonts/`.
5. When the upstream project or font version changes, re-check attribution and license provenance even if the license text itself is unchanged.

The font licenses cover font software only. They do not determine the license of the website, story, or other original repository content.

- [SIL Open Font License](https://openfontlicense.org/)
- [Third-party notices](../THIRD-PARTY-NOTICES.md)

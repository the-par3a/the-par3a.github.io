# The-Par3a — Personal Website

The-Par3a is a personal website and creative project by **Parsa**. This repository contains the website source, its original written material, locally hosted fonts, and the published Royesh story.

- **Live website:** https://aftervoid.github.io/
- **English homepage:** https://aftervoid.github.io/index-en.html
- **Persian story:** https://aftervoid.github.io/naaktab.html
- **English story:** https://aftervoid.github.io/royesh-en.html

## Project structure

| Path | What it contains |
|---|---|
| `index.html` | Persian homepage |
| `index-en.html` | English homepage |
| `naaktab.html` | Persian Royesh story |
| `royesh-en.html` | English Royesh story |
| `fonts/` | Locally hosted font files and their inventory |
| `licenses/` | Complete third-party font license texts |
| `LICENSE` | Apache License 2.0 for eligible original software code |
| `CONTENT-LICENSE.md` | CC BY 4.0 terms for eligible original written content |
| `THIRD-PARTY-NOTICES.md` | Third-party attribution and license boundaries |
| `upptime/` | Generated status dashboard with its own upstream license |

## Typography

The English homepage uses a documented, layered font-delivery and fallback strategy. See [Font delivery and fallback strategy](FONT-DELIVERY.md) for the role of each family, provider order, CDN caveats, and instructions for reusing the source.


The website uses locally hosted font files. This keeps font delivery under the website's own origin and avoids runtime requests to external font CDNs.

| Typeface | Where it is used |
|---|---|
| **Rooyin** | Persian homepage interface and reading text |
| **Pixelify Sans** | English homepage interface and body text |
| **Press Start 2P** | English homepage headings |
| **Inter** | English story interface and supporting typography |
| **Lora** | English story reading text |
| **Cormorant Garamond** | English story display headings |
| **Cascadia Code** | Code samples and phonetic/IPA text |
| **Vazirmatn** | Retained local font asset and fallback use |

See [`fonts/README.md`](fonts/README.md) for the file-by-file inventory and [`THIRD-PARTY-NOTICES.md`](THIRD-PARTY-NOTICES.md) for upstream attribution.

## License overview

Different parts of this repository have different copyright owners and license terms. There is no single license that automatically covers every file.

- **Original software code:** Apache License 2.0, where Parsa holds the relevant rights. See [`LICENSE`](LICENSE).
- **Original written and literary content:** Creative Commons Attribution 4.0 International (CC BY 4.0), where Parsa holds the relevant rights. See [`CONTENT-LICENSE.md`](CONTENT-LICENSE.md).
- **Third-party fonts and assets:** remain under their own licenses. The bundled font families use SIL Open Font License 1.1 (OFL-1.1); see [`licenses/`](licenses/) and [`THIRD-PARTY-NOTICES.md`](THIRD-PARTY-NOTICES.md).
- **Generated status dashboard:** the material under `upptime/` is excluded from the root Apache and CC BY notices. Its upstream MIT license is retained at [`upptime/LICENSE`](upptime/LICENSE).

When a file combines code and written content, each component keeps the license applicable to that component. These notices apply only to material for which the stated copyright holder has the necessary rights; third-party material is not relicensed here.

## Maintaining fonts and notices

- Keep each distributed font with its complete license text and required copyright attribution.
- Update the font inventory and third-party notices whenever font files or versions change.
- Check any Reserved Font Name declared by the upstream font project before modifying or converting a font.
- Do not sell OFL font software by itself or distribute it under a different license.
- Treat the full license files as the legal terms; README summaries are navigation aids, not replacements.

### Automated license checks

The [Update font licenses workflow](.github/workflows/update-font-licenses.yml) runs every Monday at 08:23 UTC and can also be started manually from the **Actions** tab. It currently checks and synchronizes the upstream license texts for **Cormorant Garamond, Inter, Lora, Cascadia Code, and Vazirmatn**.

The workflow updates license text files only. It does not download or replace font binaries, and it does not automatically synchronize the license files for **Rooyin, Pixelify Sans, or Press Start 2P**. Review those projects' upstream notices manually when changing their font versions. A failed workflow should be investigated from its Actions log rather than worked around by replacing a license file without verification.

## Useful documentation

- [Font inventory](fonts/README.md)
- [Font license index](licenses/README.md)
- [Third-party notices and attributions](THIRD-PARTY-NOTICES.md)
- [Content license scope](CONTENT-LICENSE.md)

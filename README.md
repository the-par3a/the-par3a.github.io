# The-Par3a — Personal Website

This repository contains the source files for the personal website and the **Royesh** interactive science-fiction story.

- Website: https://the-par3a.github.io/
- English story: https://the-par3a.github.io/royesh-en.html
- Persian story: https://the-par3a.github.io/naaktab.html

## Typography and self-hosted fonts

The website serves its webfonts directly from this repository. The pages do not depend on Google Fonts or a third-party font CDN, so font requests stay on the site's own origin.

| Font family | Main role | Bundled webfont |
|---|---|---|
| **Vazirmatn** | Persian interface and Persian reading text | `fonts/Vazirmatn.woff2` |
| **Inter** | English interface, navigation, and controls | `fonts/InterVariable.woff2` |
| **Lora** | English story prose and long-form reading | `fonts/Lora[wght].woff2` |
| **Cormorant Garamond** | English titles, headings, and display typography | Six static WOFF2 styles in `fonts/` |
| **Cascadia Code** | Code samples and IPA/phonetic notation | `fonts/CascadiaCode.woff2` |

The English story uses a deliberate typographic hierarchy: Inter for interface elements, Lora for reading, Cormorant Garamond for display headings, and Cascadia Code for technical text. Persian text uses Vazirmatn.

### Font licensing

All five bundled font families are distributed under the **SIL Open Font License 1.1 (OFL-1.1)**. Their full license texts and attribution notices are kept in [`licenses/`](licenses/). The font licenses apply to the font software; they do not automatically apply to the website code, the Royesh story, or other original repository content.

Start here:
- [Third-party notices and font attributions](THIRD-PARTY-NOTICES.md)
- [Font file inventory](fonts/README.md)
- [License index and maintenance notes](licenses/README.md)

### Automatic license checks

The GitHub Actions workflow [Update font licenses](.github/workflows/update-font-licenses.yml) checks the five upstream license files every Monday at 08:23 UTC. It can also be started manually from the repository's **Actions** tab.

When an upstream license text changes, the workflow validates that the downloaded file is non-empty and still identifies itself as the SIL Open Font License, replaces only the corresponding text file under `licenses/`, and commits the change. If nothing changed, it creates no commit.

This automation deliberately does **not** download or replace font binaries, and it cannot decide whether a font's metadata, reserved font name, or attribution description needs a human review. Those items should be checked when changing font files or upstream projects.

## Repository maintenance

- Keep font binaries, their complete license texts, and attribution information together.
- Review upstream terms before adding, converting, modifying, or replacing a font.
- Do not treat the OFL as the license for unrelated site content.
- Check the latest workflow run in **Actions** if an automatic license check fails.

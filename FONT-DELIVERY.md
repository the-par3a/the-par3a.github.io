# Font delivery and fallback strategy

This document explains how the English homepage loads its five typefaces, why the sources are ordered this way, and what another developer should change when reusing this source.

## At a glance

The homepage uses a layered fallback strategy. It prefers files served by this repository, then tries compatible network providers, and finally falls back to fonts already installed on the visitor's device and standard system fonts.

| Typeface | Intended role | Variable/static | Fontsource family / package |
|---|---|---|---|
| **Inter** | Main English body copy and general interface | Variable, weights 100–900 | [Inter](https://fontsource.org/fonts/inter) · `@fontsource-variable/inter` |
| **DM Sans** | Secondary clean sans-serif fallback | Variable, weights 100–1000 | [DM Sans](https://fontsource.org/fonts/dm-sans) · `@fontsource-variable/dm-sans` |
| **Space Grotesk** | Hero and section headings | Variable, weights 300–700 | [Space Grotesk](https://fontsource.org/fonts/space-grotesk) · `@fontsource-variable/space-grotesk` |
| **Pixelify Sans** | Pixel-styled controls and selected interface details | Variable, weights 400–700 | [Pixelify Sans](https://fontsource.org/fonts/pixelify-sans) · `@fontsource-variable/pixelify-sans` |
| **Press Start 2P** | Decorative pixel headings | Static, weight 400 | [Press Start 2P](https://fontsource.org/fonts/press-start-2p) · `@fontsource/press-start-2p` |

The exact visual role is controlled by the CSS font stacks in `index-en.html`; the table describes the intended design role, not a promise that every visitor will receive every face.

## Source order

For each typeface, the intended preference is:

1. **Repository-local file** — a relative `./fonts/...` URL served from the website's own origin. This is the preferred production source because it is under this project's deployment and cache control.
2. **Repository CDN mirrors** — jsDelivr plus its Fastly and Gcore endpoints. These serve the same repository assets; they are mirrors, not three independent copies of the font.
3. **Google Fonts stylesheet** — the page's primary hosted stylesheet. It selects the appropriate webfont files and subsets for the requested families.
4. **Bunny Fonts stylesheet fallback** — added only if the Google Fonts stylesheet itself emits a loading error. It is a second stylesheet provider, not a fallback for every individual font-file failure.
5. **Google Fonts upstream repository (Raw)** — direct upstream font files, where a matching face is defined in the CSS.
6. **Fontsource stylesheet fallback** — versioned font packages delivered through Fontsource's jsDelivr-backed CDN. The current `@latest` stylesheet URLs intentionally follow the latest package release; pin an exact package version for reproducible deployments.
7. **Locally installed visitor font** — used only if the visitor already has that family installed.
8. **System generic fallback** — for example, `Segoe UI`, `Arial`, or `sans-serif`.

The CSS family stack is the final selection order. URLs inside one `src` list are alternative sources for the same face. Browsers may schedule network requests asynchronously; this should not be interpreted as a guarantee that every URL is contacted one-by-one in a strict timeline.

## Fontsource URL conventions

Fontsource documents two CDN URL patterns:

- CSS: `https://cdn.jsdelivr.net/fontsource/css/{font-id}:vf@{version}/{subset}.min.css` for variable families.
- CSS: `https://cdn.jsdelivr.net/fontsource/css/{font-id}@{version}/{subset}.min.css` for static families.

The live page currently uses `@latest` for its Fontsource stylesheets. This is convenient for receiving upstream updates, but it is not a frozen dependency. For a reproducible release, inspect each family's Fontsource **Get font → CDN** panel and replace `latest` with the exact package version shown there. Do not guess a version or a font filename. Fontsource recommends self-hosting when practical and documents exact-version URLs for stable production assets.

Fontsource uses a jsDelivr-backed proxy. It adds a different package and stylesheet route, but it is **not an independent CDN network** from the jsDelivr mirror entries above.

## Important implementation notes

- Keep `font-display: swap` on locally declared faces so text remains visible while a webfont is loading.
- Avoid preloading every font. If performance testing justifies preloading, preload only the single critical face/subset used above the fold.
- Do not add every provider as a separate `@font-face` without checking the actual CSS family name, weight range, style, subset, and file format.
- A stylesheet `error` event detects failure to load that stylesheet; it does not reliably detect every failure of an individual font file referenced inside a stylesheet.
- The three jsDelivr hostnames point to the same repository asset. They improve endpoint redundancy but do not provide independent source ownership.
- The repository's `fonts/` directory is the intended self-hosted source. Keep it populated with the actual font binaries before describing local hosting as available.
- Font files remain third-party assets under their own licenses. See [Third-party notices](THIRD-PARTY-NOTICES.md) and the complete license files in `licenses/`.

## Reusing this website source

If you copy this repository:

1. Keep the `fonts/` directory and its license notices, or replace the relative font URLs with files you are legally allowed to distribute.
2. Update the jsDelivr and Raw GitHub URLs to point to your own repository if you are hosting your own font copies.
3. Decide whether you want floating Fontsource `@latest` URLs or exact pinned versions.
4. Keep the Google-to-Bunny stylesheet fallback only if you want that behavior; it is not necessary when all fonts are self-hosted.
5. Test with browser developer tools → **Network** (filter by `font`) and **Computed** styles to see which file and family actually won.
6. Verify the relevant licenses before redistributing any font file.

## References

- [Fontsource CDN documentation](https://fontsource.org/docs/getting-started/cdn)
- [Fontsource variable font documentation](https://fontsource.org/docs/getting-started/variable)
- [Fontsource Inter details](https://fontsource.org/fonts/inter/about)
- [Fontsource DM Sans details](https://fontsource.org/fonts/dm-sans/about)
- [Fontsource Space Grotesk details](https://fontsource.org/fonts/space-grotesk/about)
- [Fontsource Pixelify Sans details](https://fontsource.org/fonts/pixelify-sans/about)
- [Fontsource Press Start 2P details](https://fontsource.org/fonts/press-start-2p/about)

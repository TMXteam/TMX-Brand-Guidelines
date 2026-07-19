<div align="center">

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="ecosystem/assets/ecosystem/globe/ecosystem-globe-dark-512.png" />
  <img src="ecosystem/assets/ecosystem/globe/ecosystem-globe-light-512.png" alt="TMX Ecosystem" width="120" />
</picture>

# TMX Brand Kits

**Brand kits for the TMX ecosystem.**

[![Open the TMX Ecosystem kit](https://img.shields.io/badge/Open_the_TMX_Ecosystem_kit-live-A54D1F?style=for-the-badge)](https://tmxteam.github.io/TMX-Brand-Guidelines/ecosystem/partner-kit.html)
[![Open the Predixa kit](https://img.shields.io/badge/Open_the_Predixa_kit-live-0E7A40?style=for-the-badge)](https://tmxteam.github.io/TMX-Brand-Guidelines/predixa/partner-kit.html)

</div>

---

Self-contained, reproduction-only design specs for rendering TMX ecosystem
products correctly in a campaign. Each kit shows how to render a product's
brand so it reads as ours: the marks, colour, type, co-brand lockups, and the
usage terms. Every value is verified against the TMX design source of truth.

> **Who this is for:** partners, press, and internal teams reproducing the brand.
> If you landed here by chance and just want TMX's public brand kit, head to
> [tmx.info/ambassadors](https://tmx.info/ambassadors).

## Kits

### TMX Ecosystem &middot; umbrella brand

| | |
|---|---|
| **Open the kit** | **[tmxteam.github.io/TMX-Brand-Guidelines/ecosystem ↗](https://tmxteam.github.io/TMX-Brand-Guidelines/ecosystem/partner-kit.html)** &middot; the live page (fonts and marks bundled, no network needed) |
| **Usage policy** | [`ecosystem/usage-policy.md`](ecosystem/usage-policy.md) &middot; nominative-use and trademark terms |
| **Marks** | [`ecosystem/assets/ecosystem/`](ecosystem/assets/ecosystem) &middot; grouped into `logo/`, `globe/`, `favicon/`, `fonts/` |
| **One download** | [`TMX-ecosystem-assets.zip`](ecosystem/assets/ecosystem/TMX-ecosystem-assets.zip) &middot; the whole pack |

### Predixa &middot; prediction market

| | |
|---|---|
| **Open the kit** | **[tmxteam.github.io/TMX-Brand-Guidelines/predixa ↗](https://tmxteam.github.io/TMX-Brand-Guidelines/predixa/partner-kit.html)** &middot; the live page (fonts and marks bundled, no network needed) |
| **Usage policy** | [`predixa/usage-policy.md`](predixa/usage-policy.md) &middot; nominative-use and trademark terms |
| **Marks** | [`predixa/assets/predixa/`](predixa/assets/predixa) &middot; grouped into `logo/`, `globe/`, `favicon/`, `fonts/` |
| **One download** | [`TMX-predixa-assets.zip`](predixa/assets/predixa/TMX-predixa-assets.zip) &middot; the whole pack |

### Everything, in one file

**[`TMX-brand-kits.zip`](TMX-brand-kits.zip)** &middot; every kit, every asset, each
file once. Both kit pages open offline from the extracted folder. Prefer this to
downloading the repo as a zip &mdash; the repo also carries the per-kit packs
(`*-assets.zip`, `*-essentials.zip`, `*-fonts.zip`), which are copies of the
loose asset trees, so a repo zip ships each mark two to three times.

Rebuild it after any kit change: `pwsh tools/build-bundle.ps1`.

_More kits (TMX DEX) will be added here._

## Reproduce, don't redraw

Use the supplied vector and raster files as-is. Never redraw, re-trace, recolour,
or AI-generate a mark or lockup. If a value ever disagrees with the live brand
source, the source wins.

## Versioning

Each kit is versioned independently &mdash; see [`VERSIONING.md`](VERSIONING.md).
The current version and date show in the kit's top bar and at the top of its
`usage-policy.md`; any change to a kit bumps that version.

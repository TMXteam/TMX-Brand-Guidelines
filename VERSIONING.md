# Versioning the partner kits

Each kit under `<brand>/` is versioned **independently** with
[Semantic Versioning](https://semver.org): `MAJOR.MINOR.PATCH`, shown as
`vX.Y.Z · YYYY-MM-DD` in the kit's top bar / footer and at the top of its
`usage-policy.md`.

**When you change a kit, bump its version by the size of the change and set the
date — in both `partner-kit.html` and `usage-policy.md`, in the same PR.** Never
leave the version behind a change.

| Bump | Size | When | Examples |
|---|---|---|---|
| **MAJOR** `X.0.0` | Defining / breaking | Prior co-branded work may no longer comply | New primary mark, palette overhaul, restructured sections, changed usage law |
| **MINOR** `x.Y.0` | Notable, compatible | Visible or additive, old work still complies | New section / asset / lockup, meaningful copy change, visible restyle (e.g. a type-floor bump) |
| **PATCH** `x.y.Z` | Small | No compliance impact | Typo, one value, link fix, dark-mode outline fix, tiny copy edit |

## Rules

- One version per kit; kits move independently (e.g. `predixa v1.2.0` while `ecosystem v1.0.1`).
- Bump in the same commit that makes the change; the date is the change date, not the first-release date.
- Record each release as one line in `<brand>/CHANGELOG.md`: `vX.Y.Z  YYYY-MM-DD  — what changed`.
- All kit changes reach `main` by PR; the maintainer merges.

A kit's current version is shown in its top bar and at the top of its `<brand>/CHANGELOG.md` — this doc does not restate it, so there is nothing here to keep in sync.

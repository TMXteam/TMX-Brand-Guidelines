# Builds TMX-brand-kits.zip: every kit, every asset, each file exactly once.
# The per-kit packs under <brand>/assets/<brand>/*.zip are copies of the loose
# tree, so a repo-wide zip ships each mark 2-3x. This bundle omits them and
# repoints the in-page download buttons at the live URLs.
# Run from the repo root:  pwsh tools/build-bundle.ps1

$ErrorActionPreference = 'Stop'
$root   = Split-Path $PSScriptRoot -Parent
$brands = @('ecosystem', 'predixa')
$base   = 'https://tmxteam.github.io/TMX-Brand-Guidelines'
$stage  = Join-Path ([System.IO.Path]::GetTempPath()) 'TMX-brand-kits'
$out    = Join-Path $root 'TMX-brand-kits.zip'

if (Test-Path $stage) { Remove-Item $stage -Recurse -Force }
New-Item -ItemType Directory $stage | Out-Null
Copy-Item (Join-Path $root 'README.md'), (Join-Path $root 'VERSIONING.md') $stage

foreach ($b in $brands) {
  Copy-Item (Join-Path $root $b) $stage -Recurse
  Get-ChildItem (Join-Path $stage "$b/assets/$b") -Filter *.zip | Remove-Item
  $page = Join-Path $stage "$b/partner-kit.html"
  (Get-Content $page -Raw).Replace("href=`"assets/$b/TMX-$b-", "href=`"$base/$b/assets/$b/TMX-$b-") |
    Set-Content $page -NoNewline
}

# ponytail: fonts are byte-identical across brands but stay per-brand, so each
# partner-kit.html keeps working offline on its own relative @font-face paths.
if (Test-Path $out) { Remove-Item $out }
Compress-Archive -Path "$stage/*" -DestinationPath $out -CompressionLevel Optimal
"{0}  ({1:N1} MB)" -f $out, ((Get-Item $out).Length / 1MB)

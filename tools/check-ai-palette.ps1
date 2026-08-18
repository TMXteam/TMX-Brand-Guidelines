# Fails when the palette table in ai/tmx-brand/SKILL.md drifts from the values
# the kits actually ship. The skill inlines these eight values as a deliberate
# exception to its own never-invent-a-brand-value rule, so they are the one
# place in it that can silently go wrong.
#
# Covers the palette ONLY. The skill's rulebook section duplicates
# ambassadors.guide.* in the tmx.info-v1 repo, which is not readable from here;
# that coupling is a documented convention, not a checked one.

$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$skill = Join-Path $root 'ai/tmx-brand/SKILL.md'

function Get-Token([string]$cssPath, [string]$theme, [string]$name) {
  $css = Get-Content -Raw (Join-Path $root $cssPath)
  # Each tokens.css declares html[data-theme="dark"]{...} then ["light"]{...}.
  $block = [regex]::Match($css, "data-theme=`"$theme`"\]\s*\{(?<body>[^}]*)\}")
  if (-not $block.Success) { throw "no $theme block in $cssPath" }
  $hit = [regex]::Match($block.Groups['body'].Value, "--$name\s*:\s*(?<v>#[0-9A-Fa-f]{6})")
  if (-not $hit.Success) { throw "no --$name in $theme block of $cssPath" }
  return $hit.Groups['v'].Value.ToUpper()
}

$eco = 'ecosystem/assets/ecosystem/tokens.css'
$px  = 'predixa/assets/predixa/tokens.css'

$expected = [ordered]@{
  'Ground'                = @((Get-Token $eco 'dark' 'bg'),     (Get-Token $eco 'light' 'bg'))
  'Ink'                   = @((Get-Token $eco 'dark' 'ink'),    (Get-Token $eco 'light' 'ink'))
  'TMX Ecosystem accent'  = @((Get-Token $eco 'dark' 'accent'), (Get-Token $eco 'light' 'accent'))
  'Predixa accent'        = @((Get-Token $px  'dark' 'accent'), (Get-Token $px  'light' 'accent'))
}

$lines = Get-Content $skill
$failed = $false

foreach ($role in $expected.Keys) {
  $row = $lines | Where-Object { $_ -match "^\|\s*\*\*?$([regex]::Escape($role))\*?\*?\s*\|" -or $_ -match "^\|\s*$([regex]::Escape($role))\s*\|" }
  if (-not $row) { Write-Host "MISSING row: $role" -ForegroundColor Red; $failed = $true; continue }
  $found = [regex]::Matches($row, '#[0-9A-Fa-f]{6}') | ForEach-Object { $_.Value.ToUpper() }
  $want  = $expected[$role]
  if ($found.Count -ne 2 -or $found[0] -ne $want[0] -or $found[1] -ne $want[1]) {
    Write-Host "DRIFT  $role : skill has [$($found -join ', ')], kits ship [$($want -join ', ')]" -ForegroundColor Red
    $failed = $true
  } else {
    Write-Host "ok     $role : $($want -join ', ')"
  }
}

if ($failed) { Write-Host "`nPalette drift. Update the table in ai/tmx-brand/SKILL.md." -ForegroundColor Red; exit 1 }
Write-Host "`nPalette matches both kits." -ForegroundColor Green
exit 0

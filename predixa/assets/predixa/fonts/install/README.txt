TMX Predixa fonts, installable set
===================================

Families (variable TTFs, install like any normal font):

  Inter-Variable.ttf            Inter (weights 100-900; the brand uses 400/500/600/700)
  JetBrainsMono-Variable.ttf    JetBrains Mono (weights 100-800; brand labels use 400/500)

Fraunces (italic emphasis only, always weight 500 "Medium"):

  Fraunces14pt-MediumItalic.ttf   the default cut. Matches the website.
  Fraunces72pt-MediumItalic.ttf   display cut, more stylised
  Fraunces144pt-MediumItalic.ttf  display cut, most stylised
  Fraunces-Italic-Variable.ttf    all of the above on a slider (opsz 9-144, defaults to 14)

Fraunces redraws itself as optical size changes: 14pt is the sturdier cut the
website ships, and 72pt / 144pt are progressively finer and higher-contrast,
for large display and print. Use 14pt unless you are deliberately reaching for
the stylised look. Pick the fixed cut you want; reach for the variable file
only if your tool exposes an optical-size slider.

Never set Fraunces upright, and never at a weight other than 500.

Fraunces ships no static Medium upstream (only Thin/Light/Regular/SemiBold/
Bold/Black), so the four files above are instanced from the official Fraunces
variable font at weight 500. Fraunces declares no Reserved Font Name, so they
keep the Fraunces name.

Licensing: all three families are open source under the SIL Open Font
License 1.1. The license texts are included (OFL-*.txt) and must stay with
the fonts if you pass them on. The fonts may not be sold on their own.

Sources:
  Inter           https://github.com/rsms/inter
  Fraunces        https://github.com/undercasetype/Fraunces
  JetBrains Mono  https://github.com/JetBrains/JetBrainsMono

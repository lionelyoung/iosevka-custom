Iosevka Custom
==============
Installs Mac build requirements for Iosevka and makes my customizations

Homepage: https://github.com/be5invis/Iosevka

Usage
=====

1. Clone the Iosevka directory and put it in $HOME/Projects
  ```
  mkdir $HOME/Projects
  git clone https://github.com/be5invis/Iosevka
  ```
2. Run `./iosevka_custom.sh`
3. Browse to `$HOME/Projects/dist/`
  - Your fonts should be in iosevka-custom and will show up as "Iosevka Term" after installation


Script will install otfcc and ttfautohint:

- brew tap caryll/homebrew-tap
- brew install caryll/tap/otfcc-mac64 ttfautohint

Details
=======
- low asterisk
- low underscore
- single-story g
- m with shorter middle leg
- no ligations (term)

The following defaults don't need to be specified:

- fira @ (default)
- curly braces (default)
- slashed zero (default)
- lower tilde (default)

![Iosevka Custom](https://i.imgur.com/MH1gR0J.png)

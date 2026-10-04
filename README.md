# Homebrew tap

Homebrew packages for Martino Vigiani's command-line tools. Use this tap to install a released binary on macOS or Linux without installing its build toolchain.

## Install tiny

With [Homebrew](https://brew.sh/) installed:

```sh
brew install martino-vigiani/tap/tiny
tiny -version
tiny demo
```

[tiny](https://github.com/martino-vigiani/tiny) reads questions from YAML and returns answers as JSON, YAML or shell variables. See its repository for examples and usage.

## Contents

| Formula | Version in this checkout | Platforms |
|---|---|---|
| [tiny](Formula/tiny.rb) | 0.4.0 | macOS and Linux, ARM64 and x86-64 |

The formula downloads archives from tiny's GitHub releases and checks their SHA-256 hashes. Windows releases are available directly from tiny, outside this tap.

## Maintenance

The release updater lives in [tiny/scripts/update-tap.sh](https://github.com/martino-vigiani/tiny/blob/main/scripts/update-tap.sh). After updating the formula, check it with:

```sh
brew audit --strict martino-vigiani/tap/tiny
brew test martino-vigiani/tap/tiny
```

tiny is licensed under [MIT](https://github.com/martino-vigiani/tiny/blob/main/LICENSE).

# Homebrew Lightdash

Homebrew tap for Lightdash formulas.

## Local Development

### Setup

```bash
# Tap this repository locally
brew tap lightdash/test $(pwd)
```

### Testing Formulas

```bash
# Audit all formulas
brew audit --strict --new --online lightdash/test

# Style check all formulas
brew style lightdash/test

# Install a formula
brew install lightdash/test/[formula-name]

# Test a formula
brew test lightdash/test/[formula-name]

# Uninstall a formula
brew uninstall lightdash/test/[formula-name]
```

### Cleanup

```bash
# Remove the local tap
brew untap lightdash/test
```

## Publishing

Once formulas pass all checks:

```bash
# Users can tap and install with
brew tap lightdash/test
brew install lightdash/test/[formula-name]
```
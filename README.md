# Homebrew Tap for Zublime

This is a Homebrew tap for installing [Zublime](https://github.com/lydakis/zublime).

## Installation

```sh
brew tap lydakis/zublime
brew install --cask zublime
```

## Updating the Cask

When releasing a new version:

1. Build the DMG files for both architectures:
   ```sh
   # For Apple Silicon
   ./script/bundle-mac aarch64-apple-darwin
   # For Intel
   ./script/bundle-mac x86_64-apple-darwin
   ```

2. Create a GitHub release and upload the DMG files as:
   - `Zublime-aarch64.dmg`
   - `Zublime-x86_64.dmg`

3. Calculate SHA256 checksums:
   ```sh
   shasum -a 256 target/aarch64-apple-darwin/release/Zed-aarch64.dmg
   shasum -a 256 target/x86_64-apple-darwin/release/Zed-x86_64.dmg
   ```

4. Update `Casks/zublime.rb` with the new version and SHA256 values.

5. Commit and push the changes to this repository.

# Bjorkan Packwiz

## How do I install these formulae?

`brew install bjorkan/packwiz/<formula>`

Or `brew tap bjorkan/packwiz` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "bjorkan/packwiz"
brew "<formula>"
```

## Versioning Strategy

Since the upstream Packwiz project does not publish GitHub releases, this formula uses date-based versioning in the format `YYYY.MM.DD` based on the commit date. This allows Homebrew to properly track and compare versions.

When updating the formula:
1. Find the latest commit in the [packwiz repository](https://github.com/packwiz/packwiz)
2. Use the commit date in `YYYY.MM.DD` format as the version
3. Update the URL to point to the commit archive
4. Update the SHA256 checksum

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

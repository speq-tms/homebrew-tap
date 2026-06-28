# homebrew-tap

Homebrew distribution for `speq-cli`.

## MVP v1.0.0 alignment

Update `Formula/speq.rb` to `1.0.0` only after the `speq-cli` GitHub Release has published immutable artifacts and checksums. Do not point the stable formula at draft, prerelease, or placeholder assets.

Expected release assets for MVP:

- `speq-darwin-aarch64.tar.gz`
- `speq-darwin-x86_64.tar.gz`
- optional Linux asset if the formula is extended for Linux

Formula smoke tests for v1.0.0 should remain local and lightweight:

```ruby
test do
  assert_match "speq", shell_output("#{bin}/speq help")
  assert_match "1.0.0", shell_output("#{bin}/speq version")
end
```

Publication credentials and token setup stay manual for MVP. After release artifacts exist, update the formula URL and `sha256` values in a normal PR, run Homebrew audit/test locally or in CI, then publish through the release flow.

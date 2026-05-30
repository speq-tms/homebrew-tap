class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "0.2.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.2.0-alpha.1/speq-darwin-aarch64.tar.gz"
      sha256 "58f1b812888f8e152f3319f135c3a2fd44c3f7010d3bcdfcfe852af40a72a80d"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.2.0-alpha.1/speq-darwin-x86_64.tar.gz"
      sha256 "b7123d51d0a50f6f22fd3263d1ac700084c088dd4383cba0eadb827f3ce8f92a"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

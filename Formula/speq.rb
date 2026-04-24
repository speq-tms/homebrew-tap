class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "0.1.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.1/speq-darwin-aarch64.tar.gz"
      sha256 "034fea85b7d3c2b57a9f78de1f5933c0d5e033d9eb109e5d6d8a53591d9062bd"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.1/speq-darwin-x86_64.tar.gz"
      sha256 "0d063342f78248def8978c4fe0d582a49e13a32f799e39785970ffd9736fb5d6"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

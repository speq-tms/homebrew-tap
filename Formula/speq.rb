class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "0.1.0-alpha.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.0/speq-darwin-aarch64.tar.gz"
      sha256 "bc3ab4bfda1e84c07d7534e2003c303f81e005c5562486b9f1e58513a9fe6bb4"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.0/speq-darwin-x86_64.tar.gz"
      sha256 "daf1a4f2cd8073c2dc9de2065809ec9a2e83169e849cf45e8ca8085fcd9d3bec"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

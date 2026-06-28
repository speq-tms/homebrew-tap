class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.0.0/speq-darwin-aarch64.tar.gz"
      sha256 "f166f62baeb0856ff24d20c14ae9b3eb049ffc67bf0b2873447026da17b94b35"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.0.0/speq-darwin-x86_64.tar.gz"
      sha256 "587b0c11a3f8d7730ae2db86974d4abdbca83a8bbd4594c6b15eb9d7ce9993ba"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

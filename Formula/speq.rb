class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "0.1.0-alpha.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.2/speq-darwin-aarch64.tar.gz"
      sha256 "d6b297f07f240f01cfc917b7a9195a674641cf0d4a07becab624b14a244267f2"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v0.1.0-alpha.2/speq-darwin-x86_64.tar.gz"
      sha256 "952cd1e6122368a342fd13b6e5532ecdfc18fbe2030df2c248a7b0ebe1686f1c"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

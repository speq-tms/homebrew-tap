class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.1.2/speq-darwin-aarch64.tar.gz"
      sha256 "2549a1c12d16378efccacfce3b20a6adc1222c66f4bc21a9f9fa0b6620fa7582"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.1.2/speq-darwin-x86_64.tar.gz"
      sha256 "9c275d259257020ac1d6aae95e1d995c6c608771181396b1f776daee57991b15"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

class Speq < Formula
  desc "Open-source CLI runtime for speq"
  homepage "https://github.com/speq-tms/speq-cli"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.1.1/speq-darwin-aarch64.tar.gz"
      sha256 "d6267afaaa136ae2887e86ec1c158308b4920c8e6029c11d0e5a057c014bea1e"
    else
      url "https://github.com/speq-tms/speq-cli/releases/download/v1.1.1/speq-darwin-x86_64.tar.gz"
      sha256 "f14176458ac4bb885d9e97bc819b34c5f4038758e872e39de1fae0cba5888592"
    end
  end

  def install
    bin.install "speq"
  end

  test do
    assert_match "speq", shell_output("#{bin}/speq --help")
  end
end

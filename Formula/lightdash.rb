class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.0/lightdash-cli-1.199.0-macos-arm64.tar.gz"
      sha256 "e4fce7979eed60f8b38df84c63d48ed18e3fb1cc63411fe8adea966224b4ae82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.0/lightdash-cli-1.199.0-macos-x64.tar.gz"
      sha256 "a1c39b31998bff016a62f3cf32dc241dca32e98447f59d67fcd74c58efb00bcb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end

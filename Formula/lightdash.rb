class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2459.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.0/lightdash-cli-0.2459.0-macos-arm64.tar.gz"
      sha256 "0d5ba4aba7b6860de398fccdf249d45ca30f16a0758b92f8ab060e67ffe01423"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.0/lightdash-cli-0.2459.0-macos-x64.tar.gz"
      sha256 "c17b321f5d2106fd6f4ba5a0a8ea518be1a483472e627c9ebc91458421ad2151"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2849.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.0/lightdash-cli-0.2849.0-macos-arm64.tar.gz"
      sha256 "be3cca1b1a3008b52cabf695d4ff028e9b71ad4bb923400cbb6b88bf4fda936d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.0/lightdash-cli-0.2849.0-macos-x64.tar.gz"
      sha256 "4b0f3383e50f6862d6d86778d9705f97aa515cbb9b3208f1a899f033d7c844e2"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2243.0/lightdash-cli-0.2243.0-macos-arm64.tar.gz"
      sha256 "556a668c68408602a8c41c4628fce2ccc7bde89023d335ac4f89c30800d7ad44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2243.0/lightdash-cli-0.2243.0-macos-x64.tar.gz"
      sha256 "313c04a793bc190d4783e7b51b92b0df69ffcdceb0a129fda553c2e1e421ab73"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.4/lightdash-cli-1.159.4-macos-arm64.tar.gz"
      sha256 "e2dae74b85a56ce697718c46efda146dff3fcfe3313b3bb5887955601826405d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.4/lightdash-cli-1.159.4-macos-x64.tar.gz"
      sha256 "cb372950673237fe4cffcb3837196d2ca96bc9d4e64124ca43928021e6768223"
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

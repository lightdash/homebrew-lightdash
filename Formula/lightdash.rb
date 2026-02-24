class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2519.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2519.0/lightdash-cli-0.2519.0-macos-arm64.tar.gz"
      sha256 "bd0cf255b2cbb1d448a53e4c9d386927e2a35149164006c44a9c0b7f73b497bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2519.0/lightdash-cli-0.2519.0-macos-x64.tar.gz"
      sha256 "4d84435c7319ec33091da3e19a45b46b67da4985fdec3a21afabf2793d584e0c"
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

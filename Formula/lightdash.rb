class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3409.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3409.1/lightdash-cli-0.3409.1-macos-arm64.tar.gz"
      sha256 "acd066a9a3a472d8a5eef4f3185693110deda1f7c2c6c46520f421a0fb7c4969"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3409.1/lightdash-cli-0.3409.1-macos-x64.tar.gz"
      sha256 "0c6ed45bd69b44625290d902d2cf7cd84a58e8317c8b8b3ab82457575756f441"
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

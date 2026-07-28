class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.6.0/lightdash-cli-1.6.0-macos-arm64.tar.gz"
      sha256 "f4c231e8486f3050a65d6155bece625b09344c91a56dc7f44b07293845d3c206"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.6.0/lightdash-cli-1.6.0-macos-x64.tar.gz"
      sha256 "4a097f541d7d59962d463bb058257ce9986e043ef197239837bff94534e05c67"
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

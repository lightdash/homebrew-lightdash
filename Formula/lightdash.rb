class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2451.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.1/lightdash-cli-0.2451.1-macos-arm64.tar.gz"
      sha256 "5222acacf88c4aa7e01cd133580281e1c655eb00de6100b67cc75bb6f94af877"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.1/lightdash-cli-0.2451.1-macos-x64.tar.gz"
      sha256 "475289cd907ef714514d71e656f938d905281911cd8f353984f13d3d2fb7a898"
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

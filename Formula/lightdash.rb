class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2848.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.3/lightdash-cli-0.2848.3-macos-arm64.tar.gz"
      sha256 "9df2e38da9499bc4d54283624e07f9ec8ab81d814765d3d857906964fb22654b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.3/lightdash-cli-0.2848.3-macos-x64.tar.gz"
      sha256 "1c8387deddca71a43b2efe4a54deae09b0772bceb79bd087702507e269cdc10c"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3426.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3426.0/lightdash-cli-0.3426.0-macos-arm64.tar.gz"
      sha256 "48e1759e2d0276961640db9be60828f9d659c2f59cb4cbafe1510b9cdd07cd0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3426.0/lightdash-cli-0.3426.0-macos-x64.tar.gz"
      sha256 "e204862b2b12ed871e95a9448f892b1f6f08db4c27246e192689e01d2699958a"
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

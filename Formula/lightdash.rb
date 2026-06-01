class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3065.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3065.0/lightdash-cli-0.3065.0-macos-arm64.tar.gz"
      sha256 "ea0015841b287653b88594d2976ed343075c59c853db00bd42718a96b2425695"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3065.0/lightdash-cli-0.3065.0-macos-x64.tar.gz"
      sha256 "1cb0cc95f18ce43a6dd2c5d73f3d7724c6f732394065cbdc871d0d6bc089048f"
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

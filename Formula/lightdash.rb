class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3024.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.0/lightdash-cli-0.3024.0-macos-arm64.tar.gz"
      sha256 "165ad6930b8e2e3d763846923a91c6f4c84e262caac2a954c7015d912f4e658b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.0/lightdash-cli-0.3024.0-macos-x64.tar.gz"
      sha256 "e98aede39f5f05ff9ee7230590790956fb3c1d08c096e4d8afb39458f6524cf0"
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

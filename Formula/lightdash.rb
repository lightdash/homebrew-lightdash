class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2480.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2480.0/lightdash-cli-0.2480.0-macos-arm64.tar.gz"
      sha256 "095d191e41edc3696f09d268fbdd8403d9bcb7c8cb34c425e3e61e7c10ee5a13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2480.0/lightdash-cli-0.2480.0-macos-x64.tar.gz"
      sha256 "20bc27aa0c69d54bbbd5f088d124143e3ba8113e6b97a462899c2466322bba25"
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

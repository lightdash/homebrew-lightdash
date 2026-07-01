class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3275.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3275.0/lightdash-cli-0.3275.0-macos-arm64.tar.gz"
      sha256 "3e7e583a29a0366b31ebc8ba2cc44e0e103769e6b2e1211034aa01cd62606670"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3275.0/lightdash-cli-0.3275.0-macos-x64.tar.gz"
      sha256 "bce7f373ef1a4aabd5a8999d6825d8906b2e42d64bf09a925388a09fe81cab70"
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

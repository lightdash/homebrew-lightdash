class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.176.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.176.1/lightdash-cli-2.176.1-macos-arm64.tar.gz"
      sha256 "4848b5b1fbdcf278883e9c65c0fc7dacb778597950cf07dd6415b3843ce41ae7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.176.1/lightdash-cli-2.176.1-macos-x64.tar.gz"
      sha256 "b39e5b8b1e36fcc5e0d77bfc70d90a36e0a3e43c53c04d9108936331247b44d7"
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

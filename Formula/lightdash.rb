class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2881.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.3/lightdash-cli-0.2881.3-macos-arm64.tar.gz"
      sha256 "986ab9dd226d8deed43ff45eef2cfe0964d7a0b2fba26f3cce446b601b1811fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.3/lightdash-cli-0.2881.3-macos-x64.tar.gz"
      sha256 "1f563ec3a0a330511c40b31c237b2b0c704dcf2e6bd2b1892278d70f526d7753"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.259.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.259.1/lightdash-cli-1.259.1-macos-arm64.tar.gz"
      sha256 "1bdeb70f9947507db82563e06bd6cb7b97787bfce46ba23e507161914ea2e710"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.259.1/lightdash-cli-1.259.1-macos-x64.tar.gz"
      sha256 "72b4e12e4946a4359b950a22eea5412ff5830822274ec65c50b268d8c7aafcbd"
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

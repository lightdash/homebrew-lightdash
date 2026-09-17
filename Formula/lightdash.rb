class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.0/lightdash-cli-2.255.0-macos-arm64.tar.gz"
      sha256 "6de3159d7a115756673df025120ed3addb9a7942b993237de8aea2e1c9d047bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.0/lightdash-cli-2.255.0-macos-x64.tar.gz"
      sha256 "c2e3c4d2247d01768813ff2acde6a220d26f5a33a978a13b50dfd6f2459f65fe"
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

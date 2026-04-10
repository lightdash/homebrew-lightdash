class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2748.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.0/lightdash-cli-0.2748.0-macos-arm64.tar.gz"
      sha256 "d492f89716b6041b08ab2eef6b75f31bb680919b688d51ee66a49c1da4e72f67"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.0/lightdash-cli-0.2748.0-macos-x64.tar.gz"
      sha256 "98f6099157a0dc5bcba3fde1d603c2871c392f10bc2b059f91062081135d28ca"
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

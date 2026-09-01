class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.68.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.68.1/lightdash-cli-2.68.1-macos-arm64.tar.gz"
      sha256 "9a73c2356864d6cd517e612818aea24a13a014600e22d04741d21303eea4216a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.68.1/lightdash-cli-2.68.1-macos-x64.tar.gz"
      sha256 "3fa9db17aa832ff5d35b46329c88933d3952746290713cb121b5df7710de8443"
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

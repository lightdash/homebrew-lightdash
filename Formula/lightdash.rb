class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.4.0/lightdash-cli-2.4.0-macos-arm64.tar.gz"
      sha256 "ba745bf750a0229b55b7e4483e27bab94ab5d62a8d6f44d69c8a9b89294078b1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.4.0/lightdash-cli-2.4.0-macos-x64.tar.gz"
      sha256 "38b57a954da7257705c8640be81a0355db1db797405a4f52eff0927161f5a28d"
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

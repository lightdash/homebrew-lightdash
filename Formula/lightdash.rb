class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3431.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3431.0/lightdash-cli-0.3431.0-macos-arm64.tar.gz"
      sha256 "7f325e566bac49223047ce1eb6e1ed65003faaa45ad7771034bbcc16378e286d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3431.0/lightdash-cli-0.3431.0-macos-x64.tar.gz"
      sha256 "cbc008d225a5aabf34af2f49f7ff6218cc10bfe5ea7e8aac5c212957a301ac6b"
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

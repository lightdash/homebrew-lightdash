class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2705.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2705.0/lightdash-cli-0.2705.0-macos-arm64.tar.gz"
      sha256 "680bafc1841660f5487bf9e6bd1556a77912bf957bbb045b1e1717b8700e4b41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2705.0/lightdash-cli-0.2705.0-macos-x64.tar.gz"
      sha256 "8a5c339178cab6e46021693a60dd5eaa7cc24e4fa7de54a0cf60a87d9c8cf176"
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

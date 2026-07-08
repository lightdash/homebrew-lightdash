class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3336.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3336.0/lightdash-cli-0.3336.0-macos-arm64.tar.gz"
      sha256 "17e535937b2c0d44ca5257a48ef53aa4a687487b63c96196afd9f4550512f77d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3336.0/lightdash-cli-0.3336.0-macos-x64.tar.gz"
      sha256 "674b4422ceb92450ce5208f226cfcf1a70e1347bda50767cb898edb5ccafb260"
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

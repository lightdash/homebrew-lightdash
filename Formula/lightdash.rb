class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.0/lightdash-cli-0.2221.0-macos-arm64.tar.gz"
      sha256 "22f267bc3f0ec2a4408270877112157c155ef1a365f5ab091246e70771a72d41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.0/lightdash-cli-0.2221.0-macos-x64.tar.gz"
      sha256 "ee86fdd9522487cd0e7cd8d8122189020479ee882722ad71ab839d6ccca09425"
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

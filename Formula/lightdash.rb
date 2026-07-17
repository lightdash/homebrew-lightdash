class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3412.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3412.0/lightdash-cli-0.3412.0-macos-arm64.tar.gz"
      sha256 "95bcc48892cce76f093941678fec303d685d1c33729c52f8b7c35f52f906afa1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3412.0/lightdash-cli-0.3412.0-macos-x64.tar.gz"
      sha256 "ea28d9f841f7cfc8244d098c0c74e7acc442540f5a6d36f629663a1d18437081"
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

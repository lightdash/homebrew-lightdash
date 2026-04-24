class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2798.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2798.0/lightdash-cli-0.2798.0-macos-arm64.tar.gz"
      sha256 "24adfae95ba6c57a6191447437b53e18f22f47601f7de3f69613dec762f8eb22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2798.0/lightdash-cli-0.2798.0-macos-x64.tar.gz"
      sha256 "f75ba8bcce2fd92a4386c1d312bb044d21c60ea3fb4142acb21b2a64c9f10624"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3109.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3109.1/lightdash-cli-0.3109.1-macos-arm64.tar.gz"
      sha256 "5c7ea5e4088dadec1279a6289ac498d3cf6e38d54c002e0839fbe84cf3793796"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3109.1/lightdash-cli-0.3109.1-macos-x64.tar.gz"
      sha256 "3e065adf94b7d408414292ef21a9c8a78dff70c9cf28a53509a40fdee1d7e341"
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

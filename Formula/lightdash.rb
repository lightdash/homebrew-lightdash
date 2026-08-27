class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.1/lightdash-cli-2.18.1-macos-arm64.tar.gz"
      sha256 "b43a0a112a0d0117fd766bf3578377be55d4b155f4a7e85f96dd6f8312f9df1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.1/lightdash-cli-2.18.1-macos-x64.tar.gz"
      sha256 "9ad13aaa2609bfdfdfaaa028aaf2017f30b5790aa5f462f25fa0aea838229bd9"
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

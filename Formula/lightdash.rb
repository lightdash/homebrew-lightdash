class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.4/lightdash-cli-2.243.4-macos-arm64.tar.gz"
      sha256 "c16848ebea5e7dc425145c938a5d964893f3cf9cc8709d3b7ccf79dfbde823e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.4/lightdash-cli-2.243.4-macos-x64.tar.gz"
      sha256 "6e2f579f5bca83297bb84bc4ee226f33fc8edf3448c72485688e13008e4a15e1"
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

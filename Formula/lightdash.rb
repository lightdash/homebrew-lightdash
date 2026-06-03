class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3084.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.1/lightdash-cli-0.3084.1-macos-arm64.tar.gz"
      sha256 "97d3b385df8b1e69c90846a6621cd327505a2ce14b73b959197faa7824ca8956"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.1/lightdash-cli-0.3084.1-macos-x64.tar.gz"
      sha256 "9f70d72ee6538e808926f8a9c38cbf7b2dd1a06201026e620cde98de39e74e93"
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

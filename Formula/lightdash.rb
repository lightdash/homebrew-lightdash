class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2260.0/lightdash-cli-0.2260.0-macos-arm64.tar.gz"
      sha256 "6315fe973a65369a168578faff1b685d71e8f21c7b79b2092f1f56208edd8413"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2260.0/lightdash-cli-0.2260.0-macos-x64.tar.gz"
      sha256 "328c02016194b3f0712aee9cb51d3c628b5abe6b39f299943f66ffbc96011d09"
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

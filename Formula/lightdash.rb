class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2841.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2841.0/lightdash-cli-0.2841.0-macos-arm64.tar.gz"
      sha256 "5d9bd1e7fc0ba7eb4a61c29b09e93f1296d3c483addbe5ca1d3b15facaae7bd9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2841.0/lightdash-cli-0.2841.0-macos-x64.tar.gz"
      sha256 "4de026bfe4e825eabfa22ac993b2535d0308a12cee79c9620565d1ece34c54e5"
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

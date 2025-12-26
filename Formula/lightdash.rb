class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.0/lightdash-cli-0.2282.0-macos-arm64.tar.gz"
      sha256 "2901df03358287000eac8429842ca5866867e4c6b109d3c1fa584b8720b75b9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.0/lightdash-cli-0.2282.0-macos-x64.tar.gz"
      sha256 "70012bbe26ed08e27e937426128ecc882d918b00fa12d4a9fffca330fb2f71ba"
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

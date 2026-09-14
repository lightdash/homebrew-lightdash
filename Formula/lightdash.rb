class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.206.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.1/lightdash-cli-2.206.1-macos-arm64.tar.gz"
      sha256 "a18d8115f686212bb2d3f43fac25baa5fefda9968cdff590ec18097b405082ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.1/lightdash-cli-2.206.1-macos-x64.tar.gz"
      sha256 "240db4147da87c177efd88ed4f7efbf02a55a9a5b7d0c999dbb631e0ef62c974"
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

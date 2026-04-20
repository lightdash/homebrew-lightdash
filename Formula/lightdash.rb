class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.9/lightdash-cli-0.2764.9-macos-arm64.tar.gz"
      sha256 "7dc2485b7e62e35252a244b7031e2caa908414317eb04c83a7c73b1e750c6e24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.9/lightdash-cli-0.2764.9-macos-x64.tar.gz"
      sha256 "d0e3298baf4944880674cd1105d19c74fc0dda5571f2a260010e0c5826d7bde7"
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

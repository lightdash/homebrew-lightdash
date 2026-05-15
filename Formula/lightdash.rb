class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2953.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2953.1/lightdash-cli-0.2953.1-macos-arm64.tar.gz"
      sha256 "9543ea347635969b5eb4d9be8c9fb0fcb7fe93cb5b3d3af104f6ec8cfdc079ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2953.1/lightdash-cli-0.2953.1-macos-x64.tar.gz"
      sha256 "29eec699d3969fe7427feec88e7951600348f23758a7f4359ab4a4e1884776cb"
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

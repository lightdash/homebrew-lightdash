class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.169.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.169.1/lightdash-cli-1.169.1-macos-arm64.tar.gz"
      sha256 "a4e430c37205d0ba520565ab42f04522871563be8e8951e499c9d1a0afb91efb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.169.1/lightdash-cli-1.169.1-macos-x64.tar.gz"
      sha256 "f3b0c6e6bfda830a5de4229208af482047ad57b5e115e88b98ea79a4faf848fe"
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

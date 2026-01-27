class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2382.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2382.1/lightdash-cli-0.2382.1-macos-arm64.tar.gz"
      sha256 "c101cef5f5fe70ad0c191cedd7204cfbfa51f2a5b1d6891e95ca91d4426715f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2382.1/lightdash-cli-0.2382.1-macos-x64.tar.gz"
      sha256 "b113c3a4aab633c7d70405d85338787be03d7eade0960b374707f448a443b7a2"
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

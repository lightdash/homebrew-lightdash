class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.217.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.217.1/lightdash-cli-1.217.1-macos-arm64.tar.gz"
      sha256 "a969510d0420a0198b8e28d41c3003097daba0cd85a73643d1b5d421abcf5d57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.217.1/lightdash-cli-1.217.1-macos-x64.tar.gz"
      sha256 "ebc5ef22ac06c4d989d2f9b53ce0ae5987c81f2c4bc901ee94a063f40313ec60"
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

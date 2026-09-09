class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.169.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.169.1/lightdash-cli-2.169.1-macos-arm64.tar.gz"
      sha256 "1e06d1ab80d8b03727b8abb85da8b928b2cb4f5d115c54bce8dbbe8d0951e9ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.169.1/lightdash-cli-2.169.1-macos-x64.tar.gz"
      sha256 "73355e592362b534fdedc73b0ddaa3f41a65346039e1359389ba54caf6abba13"
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

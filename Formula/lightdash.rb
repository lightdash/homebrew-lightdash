class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3083.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3083.0/lightdash-cli-0.3083.0-macos-arm64.tar.gz"
      sha256 "156a9025cdf0ddc7e0db62912f5064948699c6157851f3356fa01b7e15185a28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3083.0/lightdash-cli-0.3083.0-macos-x64.tar.gz"
      sha256 "68205de49117f81a0e1833663c34e4561bb928d8ccdeac7d6795248ffc65fe07"
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

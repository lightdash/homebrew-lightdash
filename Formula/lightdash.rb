class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3485.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3485.1/lightdash-cli-0.3485.1-macos-arm64.tar.gz"
      sha256 "1fdce1513380fe99e857b065bcd05a4bd1aa4cf92cbf58aec73c682608fdfd0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3485.1/lightdash-cli-0.3485.1-macos-x64.tar.gz"
      sha256 "c4c3413a7b08fdf99bf7dfcb2ddf01ffe64cd68eaa120c35b45f285bbc6cee3d"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3379.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3379.0/lightdash-cli-0.3379.0-macos-arm64.tar.gz"
      sha256 "4f5318c577bd9800230abcbf0ee51f4c030556856b6fc81dc1f57cb25fdc4400"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3379.0/lightdash-cli-0.3379.0-macos-x64.tar.gz"
      sha256 "ea037b51da633003b7968af1595ca54be48e78e85812d6f0bd65292c9e646228"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.210.0/lightdash-cli-2.210.0-macos-arm64.tar.gz"
      sha256 "f9bed5d1a30f6eee08629ead341ffd987ecf70a5f6ae4d1b62f28d6c9830de05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.210.0/lightdash-cli-2.210.0-macos-x64.tar.gz"
      sha256 "1aff3fa98d2a3d3f5d0b98668142fdcc4b033d0df866bd165711f5ef3115b8cd"
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

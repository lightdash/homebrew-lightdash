class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.3/lightdash-cli-0.2772.3-macos-arm64.tar.gz"
      sha256 "2ed590b5d6ceb495824a0d13795bbd90d12be3d0150d2ef04b1c5df00f6c566d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.3/lightdash-cli-0.2772.3-macos-x64.tar.gz"
      sha256 "58e240294e5c29b8d96dda377af4c7f37428765736fdccffd38df10fd298a3cf"
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

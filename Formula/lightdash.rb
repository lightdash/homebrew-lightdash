class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3411.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3411.0/lightdash-cli-0.3411.0-macos-arm64.tar.gz"
      sha256 "a049af948241bbd039b097534b6439d6e93ee456dc0ed9ed6de548648bd488d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3411.0/lightdash-cli-0.3411.0-macos-x64.tar.gz"
      sha256 "52d0db6482f3c0e77b1887e0d501c9fdb7805497e301e6ca68a268c109313c5d"
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

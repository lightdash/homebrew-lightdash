class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.236.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.1/lightdash-cli-1.236.1-macos-arm64.tar.gz"
      sha256 "a9c6f55a9663cea4f992c28056f33615af17881ec2d079fde37442c4f02f175f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.1/lightdash-cli-1.236.1-macos-x64.tar.gz"
      sha256 "2ecf14a48aeef2b180ff7a8d3bdba45f8b5f731f6e7202ccfdeac6eba84152b6"
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

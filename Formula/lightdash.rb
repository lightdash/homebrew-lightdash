class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2274.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2274.0/lightdash-cli-0.2274.0-macos-arm64.tar.gz"
      sha256 "962dce0a6157deb73fda9266e7174adc1ddd3e93a4ceccf461795224917693fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2274.0/lightdash-cli-0.2274.0-macos-x64.tar.gz"
      sha256 "f2da0adf37b6b26f50722bfa08a3d284eab979c02b17f0845e76e0330f72f2db"
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

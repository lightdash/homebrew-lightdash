class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3460.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3460.0/lightdash-cli-0.3460.0-macos-arm64.tar.gz"
      sha256 "46497b9173605e386c1c1235b05ef91358c7ea15b1b556312183131053afcb44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3460.0/lightdash-cli-0.3460.0-macos-x64.tar.gz"
      sha256 "b63c6633d37603469a1ce288769a6e17b0cb7285555a33972c45120bfda32cba"
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

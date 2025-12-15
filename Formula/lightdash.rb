class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.1/lightdash-cli-0.2251.1-macos-arm64.tar.gz"
      sha256 "389a2ab71e274eb81905b8858e51b0a41b3baddc0a425b3a5dd6a9ca670feaa8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.1/lightdash-cli-0.2251.1-macos-x64.tar.gz"
      sha256 "5a38a30e3a89047b137bcd78aa4ad48119392ca88840d59bc27991d1b460b741"
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

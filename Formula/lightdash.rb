class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2913.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2913.0/lightdash-cli-0.2913.0-macos-arm64.tar.gz"
      sha256 "d0ae19bd857df01b25cef26218e6f7ecd245ded6d392c4c10443748fb434db45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2913.0/lightdash-cli-0.2913.0-macos-x64.tar.gz"
      sha256 "b0a2e011ea0e3ad5bd453864b9b341047159a25a2b3c66ec6542b9a35fbf4666"
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

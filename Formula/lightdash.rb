class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.7/lightdash-cli-0.2764.7-macos-arm64.tar.gz"
      sha256 "22559c3b1ed766574d85946aeda2b215aba91853cdb3376370e626549610f165"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.7/lightdash-cli-0.2764.7-macos-x64.tar.gz"
      sha256 "5ef20b75c2a5f11bd4a7ba2c1c8f5a918211a78d1f1cced432a224ce24bf8527"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.40.0/lightdash-cli-1.40.0-macos-arm64.tar.gz"
      sha256 "1be45b83eb9c501966faedb61c3cc8a83af83243cde6f70bc3b4e1244ad9c4c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.40.0/lightdash-cli-1.40.0-macos-x64.tar.gz"
      sha256 "666c5843bb2698620d4f6d10cb2a39cb3adbf77684ae911936f4099948ddd020"
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

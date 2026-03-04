class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2565.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.0/lightdash-cli-0.2565.0-macos-arm64.tar.gz"
      sha256 "5e98b27166e95217bb1ffe9719ac7dc2643572e8216b3fb4e9c3d88be64c663b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.0/lightdash-cli-0.2565.0-macos-x64.tar.gz"
      sha256 "e0ec98c023de99e8a54d8a15faf0a247ae92a5e8a3bb11b1110777da51fae645"
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

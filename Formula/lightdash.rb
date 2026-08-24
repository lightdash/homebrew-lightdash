class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.244.0/lightdash-cli-1.244.0-macos-arm64.tar.gz"
      sha256 "0334947660ea51897483b10e9c62a5724d9efd043efb7fccf20f818856cbac45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.244.0/lightdash-cli-1.244.0-macos-x64.tar.gz"
      sha256 "56611d738af359366dd44ba1c83125e53d3187a062f9b9c3329678cd396fbc6a"
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

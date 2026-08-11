class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.121.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.121.0/lightdash-cli-1.121.0-macos-arm64.tar.gz"
      sha256 "277b56ac348285a0415db6d7ec0669bfd3ec73cd0c41ae56e9c4d27035b92032"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.121.0/lightdash-cli-1.121.0-macos-x64.tar.gz"
      sha256 "21ed3c49ea2672ca6c59ae04e0b1786e5ed0c86dd2dafc6272f20b65f39e72bd"
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

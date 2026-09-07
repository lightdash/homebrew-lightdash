class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.147.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.147.0/lightdash-cli-2.147.0-macos-arm64.tar.gz"
      sha256 "fbf6fbca4527647b8b00561b5eebdd0dde9297e0313bca416ff6743fad6de5bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.147.0/lightdash-cli-2.147.0-macos-x64.tar.gz"
      sha256 "e3af89a902fe11736cd5f05d836c872651de7c71ec0b6b8a2be102f1cee69ddc"
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

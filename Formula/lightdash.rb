class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3441.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.1/lightdash-cli-0.3441.1-macos-arm64.tar.gz"
      sha256 "2a85a4bf1bd2cb49249b4f1a0f0e007bd9c0f799dc267d14583c355071573e5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.1/lightdash-cli-0.3441.1-macos-x64.tar.gz"
      sha256 "6a19ac2c766d0e965c989441d450b5f921054d1d7147c6779c1ecdcc28228ff5"
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

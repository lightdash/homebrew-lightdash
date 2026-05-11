class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2906.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2906.0/lightdash-cli-0.2906.0-macos-arm64.tar.gz"
      sha256 "2e707604633bbed9ae4426855aa2b5c1cea0e5eabe8f1023402e7c70f9cc4950"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2906.0/lightdash-cli-0.2906.0-macos-x64.tar.gz"
      sha256 "03afa86e860f8ae6728c8f1e2d96bcc298c92aa0381d2a3b8a3ce80b808bf5ca"
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

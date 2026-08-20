class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.218.0/lightdash-cli-1.218.0-macos-arm64.tar.gz"
      sha256 "b76405976fab6b6926ddf1c4cdba8ac4e3cbddc4e657815b3e9390dec675777a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.218.0/lightdash-cli-1.218.0-macos-x64.tar.gz"
      sha256 "ce465ed5dcec1c3e39c76da6d72b2714c298ad3bfb8f371eb24355c32c0e6fa7"
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

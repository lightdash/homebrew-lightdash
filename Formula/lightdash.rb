class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.2/lightdash-cli-2.72.2-macos-arm64.tar.gz"
      sha256 "0a0df234c9df5543a0bc6ccf0eb34d52759f39a9de5987e4b8ff47a5581de1b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.2/lightdash-cli-2.72.2-macos-x64.tar.gz"
      sha256 "fe47c5f509640cdd183e057611b3f2d8afb516ef59d805e8dc5e867b1139e717"
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

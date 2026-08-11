class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.125.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.125.0/lightdash-cli-1.125.0-macos-arm64.tar.gz"
      sha256 "2331fdf16d5081879034ad2e583dc121e61033d8c895942d5074868377c1a773"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.125.0/lightdash-cli-1.125.0-macos-x64.tar.gz"
      sha256 "9eebb512ccf965ab74daf1f8a15aaa953386e8023b2da99a6e10e2e7fc9fc72b"
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

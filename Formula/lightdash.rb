class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2643.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2643.0/lightdash-cli-0.2643.0-macos-arm64.tar.gz"
      sha256 "f3696c4638589fa8d99b62888387a0cf4d4221d0640564715438d5347733bee1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2643.0/lightdash-cli-0.2643.0-macos-x64.tar.gz"
      sha256 "08385babb7cef6f59d7fa486404ac3ad617da908b6da53c62cf428599febd91f"
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

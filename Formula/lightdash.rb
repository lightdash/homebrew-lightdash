class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.106.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.106.0/lightdash-cli-1.106.0-macos-arm64.tar.gz"
      sha256 "3dfd4ed8b492cf16fd5b9c3272f4f604dcd5e2c4cd7c8f5095da42cb52359f3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.106.0/lightdash-cli-1.106.0-macos-x64.tar.gz"
      sha256 "3a0c58d86f7742f3831589f34d10637cb0a4d3fe227ea7934ff135188511a7a9"
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

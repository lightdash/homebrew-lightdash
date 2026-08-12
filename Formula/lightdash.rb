class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.138.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.138.0/lightdash-cli-1.138.0-macos-arm64.tar.gz"
      sha256 "464450a2305eed4ce9772015093e9a2f5126e2a1c7c3d1f49e7f9962715e90b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.138.0/lightdash-cli-1.138.0-macos-x64.tar.gz"
      sha256 "0294fb1950e7676dcbf3f5c26483460166640bc6328de75ee365609bb6766341"
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

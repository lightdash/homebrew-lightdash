class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.95.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.2/lightdash-cli-2.95.2-macos-arm64.tar.gz"
      sha256 "05eecc821dfce9b00ed6c17b8c1211ec2a6739ce81635662a37e16b49fdd90dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.2/lightdash-cli-2.95.2-macos-x64.tar.gz"
      sha256 "8d722be49e4de236bb7183f0f22a0884265da56b4e8018b7638c6c4cc87fa110"
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

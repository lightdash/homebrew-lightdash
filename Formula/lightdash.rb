class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3366.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3366.0/lightdash-cli-0.3366.0-macos-arm64.tar.gz"
      sha256 "65b6bbb0a3c9c14059477ac88e6f65f6cdc4b01a15f05c8985274cbbc82e6339"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3366.0/lightdash-cli-0.3366.0-macos-x64.tar.gz"
      sha256 "3d72d3643b782bd33f0e1764e2d37cb8162c87a9848693c85e0a36a1d13063b2"
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

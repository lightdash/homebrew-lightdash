class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.1/lightdash-cli-0.2523.1-macos-arm64.tar.gz"
      sha256 "891d730dabab82a093f7a89be8bc3e87ac853c27ed71773a3ec4d47d6a3d16e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.1/lightdash-cli-0.2523.1-macos-x64.tar.gz"
      sha256 "ca51cff7360b24e2608f1c5c659d88df8c974f620d36060b4eea9ac59e1cde27"
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

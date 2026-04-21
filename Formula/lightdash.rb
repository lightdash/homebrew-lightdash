class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2774.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.0/lightdash-cli-0.2774.0-macos-arm64.tar.gz"
      sha256 "d40227e5e0408c9b620773a3ad34cd6934b3245056c15fa74850ea78154f0e48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.0/lightdash-cli-0.2774.0-macos-x64.tar.gz"
      sha256 "7c6cecf6a1ec810ec58e8006b8f1377682c4fb3b70a761a094f36f7742b04d70"
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

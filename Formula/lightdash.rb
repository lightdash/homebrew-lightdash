class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.7/lightdash-cli-0.2903.7-macos-arm64.tar.gz"
      sha256 "d7b22081822bf16159e2df745e4def689b4417fa5d8086f6244ed0063a0225bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.7/lightdash-cli-0.2903.7-macos-x64.tar.gz"
      sha256 "74c918e7c1d2a039b6a6db9308a93fc0742353bf82d38e15c9dc25cc94411278"
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

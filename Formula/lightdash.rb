class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3408.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3408.0/lightdash-cli-0.3408.0-macos-arm64.tar.gz"
      sha256 "ef289dd01128c7e39bf16ff556c9c737a3e5cc882cd4b34ef378f34b3d9cb5aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3408.0/lightdash-cli-0.3408.0-macos-x64.tar.gz"
      sha256 "5a33c72b14fda2a2a01c4fdd9913743faaac99d18358c140cdbf668e5c103e33"
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

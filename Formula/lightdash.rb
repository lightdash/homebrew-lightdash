class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3461.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3461.0/lightdash-cli-0.3461.0-macos-arm64.tar.gz"
      sha256 "112084ec6cba58e487fc85382aa67667d0524925dacee63691845c8d2ba8c71d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3461.0/lightdash-cli-0.3461.0-macos-x64.tar.gz"
      sha256 "d24cbee0ffa6348e95f4418bc776c0bb7757f40acc7a9fc70c4f741dc5f56085"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2337.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2337.0/lightdash-cli-0.2337.0-macos-arm64.tar.gz"
      sha256 "b60bf540c4b2c64262e75355b0972ab2b654fc6b516f4718df601f6a0aeb9bc3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2337.0/lightdash-cli-0.2337.0-macos-x64.tar.gz"
      sha256 "d152dcc8ae032fecb6c41f4eb49b294a61a8e0d6a82b4d778ccf33205ff9625e"
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

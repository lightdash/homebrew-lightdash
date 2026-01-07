class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2304.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.0/lightdash-cli-0.2304.0-macos-arm64.tar.gz"
      sha256 "a346e67778c56032678cfac4fba0fb6f991b6ccea5bf4edd019377e0358a2dcf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.0/lightdash-cli-0.2304.0-macos-x64.tar.gz"
      sha256 "ffe95f22a0abb71da714e56fa6a47c60b13c9a2b43561d9fd0c7f33fdb536b99"
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

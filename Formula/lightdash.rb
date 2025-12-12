class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2248.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.3/lightdash-cli-0.2248.3-macos-arm64.tar.gz"
      sha256 "99cb3863ca465c64aac8654455f000e6b906d932933492b23b273031785171d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.3/lightdash-cli-0.2248.3-macos-x64.tar.gz"
      sha256 "7a3d89bb35fbcd4664addede55988ee2e2e2c81423a5d3e17ae5bf69347e72d5"
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

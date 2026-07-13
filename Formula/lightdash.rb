class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3371.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.1/lightdash-cli-0.3371.1-macos-arm64.tar.gz"
      sha256 "1b2ce8b5dbbe2241e1108b66d12088190aa1c95c2a274af03d595d34526246ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.1/lightdash-cli-0.3371.1-macos-x64.tar.gz"
      sha256 "abdc825ab1bdcbcfd752da62382b5899edb73ac674768aa6db9c7523817967be"
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
